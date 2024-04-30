/// @description Set camera

if (global.pause) {exit}

var _x1, _y1, _c_x, _c_y, _x1_dead, _y1_dead

if (instance_exists(target)) {
	
	//set camera size
	camera_set_view_size(view_camera[0], global.view_width, global.view_height);
	
	//set camera target
	_x1 = target.x - global.view_width  / 2;
	_y1 = target.y - global.view_height / 2;
	
	//clamp camera within room
	_x1 = clamp(_x1, 0, room_width  - global.view_width);
	_y1 = clamp(_y1, 0, room_height - global.view_height);
	
	if (target.state == "idle" or target.state == "duck") {
		//look up
		if (input_check("up"))   {_y1 = lerp(_y1, _y1 -global.view_height, global.view_speed);}
		
		//look down
		if (input_check("down")) {_y1 = lerp(_y1, _y1 +global.view_height, global.view_speed);}
	}
	
	//screenshake
	_x1 += random_range(-shake_len, shake_len);
	_y1 += random_range(-shake_len, shake_len);
	
	//new coordinates (after player looking up/down, clamp and screenshake)
	_c_x = camera_get_view_x(view_camera[0]);
	_c_y = camera_get_view_y(view_camera[0]);
	
	//parallax
	var _bg_near = layer_get_id("Mountains_Near");
	var _bg_far  = layer_get_id("Mountains_Far");
	
	layer_x(_bg_near, lerp(0, _c_x, 0.2));
	layer_x(_bg_far,  lerp(0, _c_x, 0.15));
	
	_x1_dead = _c_x;
	_y1_dead = _c_y;
	
	//set camera position
	camera_set_view_pos(view_camera[0], lerp(_c_x, _x1, global.view_speed), lerp(_c_y, _y1, global.view_speed));
}