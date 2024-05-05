#region VARIABLES

var _border = 16;
var _buffer = 24;

var _s = global.view_scale;

var _x_top_l = _border;
var _x_top_r = global.res_width - _border;
var _x_bot_l = _border;
var _x_bot_r = global.res_width - _border;

var _y_top_l = _border
var _y_top_r = _border
var _y_bot_l = global.res_height - _border;
var _y_bot_r = global.res_height - _border;

var _x_center = global.res_width /2;
var _y_center = global.res_height/2;

#endregion

if (global.debug) {

#region CONTROLS

draw_setup();
#endregion

#region INFO

//setup
draw_setup(fnt_debug, c_white, fa_left, fa_top);

//vars
var _texts = ["Blackout ",
			  "Level: ",
			  "Debug Mode: ",
			  "Select Level: ",
			  "Jump Path: "
			  ];
			  
var _infos = ["v" + string(GAME_VERSION),
			  string(room_get_name(room)),
			  string(KEY_DEBUG),
			  string(KEY_DEBUG_ROOM_SELECTOR),
			  string(KEY_DEBUG_JUMP_PATH)
			  ];
			  
var _color = [c_red,
			  c_lime,
			  c_yellow,
			  c_yellow,
			  c_yellow
			  ];

var _text_num = array_length(_texts);
var _b = 0;

var _y1 = 16;
var _y2 = _y1 + _buffer;
var _y3 = _y2 + _buffer;
var _y4 = _y3 + _buffer;
var _y5 = _y4 + _buffer;

//draw info
for (var _i = 0; _i < _text_num; _i ++) {
	
	draw_set_color(c_white);
	draw_text(_x_top_l,      _y_top_l + _b, _texts[_i]);
	var _s_width = string_width(_texts[_i]);
	
	draw_set_color(_color[_i]);
	draw_text(_x_top_l + _s_width, _y_top_l + _b, _infos[_i]);
	
	_b += _buffer;
	
}

#endregion

#region ROOM SELECTOR

if (debug_room_selector) {

//variables
var _grid_rows = 3;
var _grid_cols = 4;
var _grid_x    = 16;
var _grid_y    = _y5 + _buffer;
var _grid_w    = (camera_get_view_width(view_camera[0])  * global.view_scale) - _border;
var _grid_h    = (camera_get_view_height(view_camera[0]) * global.view_scale) - _border - _y4;
var _grid_pad  = 16;
var _c_selected = c_fuchsia;
var _c_idle = c_dkgray;
var _c_text = c_white;

// Create an array of rooms to select from
var _rooms = [rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug, rm_debug];

// Create a variable to store the current selection index
var _selection = 0;

//setup
draw_setup(fnt_debug, c_white, fa_center, fa_middle);

for (var _i = 0; _i < _grid_rows; _i++) {
    for (var _j = 0; _j < _grid_cols; _j++) {
		
        // Calculate the position and size of each cell
        var _x = _grid_x + _j * (_grid_w / _grid_cols);
        var _y = _grid_y + _i * (_grid_h / _grid_rows);
        var _w = _grid_w / _grid_cols - _grid_pad;
        var _h = _grid_h / _grid_rows - _grid_pad;

		//check if mouse is hovering the cell
		if (point_in_rectangle(mouse_x, mouse_y, _x/5, _y/5, _w/5, _h/5)) {
			show_debug_message("wow");
            // Highlight the selected cell
            _selection = _i * _grid_cols + _j;
			draw_set_color(_c_selected)
		} else {
            // Use a different color for the other cells
            draw_set_color(_c_idle);
        }
        draw_rectangle(_x, _y, _x + _w, _y + _h, false);

        // Draw the room name
        draw_set_color(_c_text);
        draw_text(_x + _w / 2, _y + _h / 2, string(_rooms[_i * _grid_cols + _j]));
    }
}
/*
// Handle the user input
if (keyboard_check_pressed(vk_right)) {
    // Move the selection to the right
    selection = (selection + 1) mod array_length_1d(_rooms);
} else if (keyboard_check_pressed(vk_left)) {
    // Move the selection to the left
    selection = (selection - 1 + array_length_1d(_rooms)) mod array_length_1d(_rooms);
} else if (keyboard_check_pressed(vk_down)) {
    // Move the selection down
    selection = (selection + _grid_cols) mod array_length_1d(_rooms);
} else if (keyboard_check_pressed(vk_up)) {
    // Move the selection up
    selection = (selection - _grid_cols + array_length_1d(_rooms)) mod array_length_1d(_rooms);
} else if (keyboard_check_pressed(vk_enter)) {
    // Go to the selected room
    room_goto(_rooms[selection]);
}*/

//reset
draw_setup();

}

#endregion

#region CURSOR

//mouse coordinates
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

//draw cursor sprite
draw_sprite_ext(spr_cursor, 0, _mouse_x, _mouse_y, global.view_scale, global.view_scale, 0, c_white, 1);

//variables
var _cursor_h = sprite_get_height(spr_cursor) * global.view_scale;
var _cursor_w = sprite_get_width(spr_cursor)  * global.view_scale;

//setup
draw_setup(fnt_debug, c_white, fa_center, fa_top);

//mouse coordinates
draw_text(_mouse_x + _cursor_w/2, _mouse_y + _cursor_w,	     "X: " + string(_mouse_x));
draw_text(_mouse_x + _cursor_w/2, _mouse_y + _cursor_h + 16, "Y: " + string(_mouse_y));

//reset
draw_setup();

#endregion

#region SELECTION

if (mouse_check_button_pressed(mb_left)) {
	draw_selection_x1 = floor(_mouse_x);
	draw_selection_y1 = floor(_mouse_y);
}

if (mouse_check_button(mb_left)) {
	
	//setup
	draw_setup(fnt_debug, c_white, fa_left, fa_top);
	
	var _x1 = floor(draw_selection_x1);
		_y1 = floor(draw_selection_y1);
	var _x2 = floor(_mouse_x);
		_y2 = floor(_mouse_y);
	
	if (_x1 % 5 == 0) {
		draw_rectangle(floor(_x1), floor(_y1), floor(_x2), floor(_y2), true);
	}
	var _x1_d = floor(draw_selection_x1 / global.view_scale);
	var _y1_d = floor(draw_selection_y1 / global.view_scale);
	var _x2_d = floor(_mouse_x		    / global.view_scale);
	var _y2_d = floor(_mouse_y		    / global.view_scale);
	
	draw_text(_x1, _y1,			  "width: "  + string(abs(_x2_d - _x1_d)));
	draw_text(_x1, _y1 + _buffer, "height: " + string(abs(_y2_d - _y1_d)));	
}

#endregion

#region AUDIO

#endregion

} else {

var _d_w = sprite_get_width(spr_diamond_ui) * _s;
var _e_w = sprite_get_width(spr_emerald_ui) * _s;
var _r_w = sprite_get_width(spr_ruby_ui)	* _s;

var _d_h = sprite_get_height(spr_diamond_ui) * _s;

var _box_buffer  = 24;
var _box_border  = 2 * _s;
var _box_space   = 16;
var _item_buffer = 40;
var _text1		 = "Ache o";
var _text2		 = "diamante!";
var _stringw	 = string_width(_text2);
var _stringh	 = font_get_size(fnt_debug);
var _boxw		 = _d_w + _e_w + _r_w + _box_border;
var _boxh		 = _d_h + _box_border;

//draw setup
draw_setup(fnt_debug, c_white, fa_top);

draw_sprite_stretched(spr_box, 0, _x_top_l, _y_top_l, _boxw, _boxh);

var _bx = _box_border/2;
var _by = _box_border/2;
var _items    = global.items;
var _item_num = num_items;
for (var _i = 0; _i < _item_num; _i ++) {
	draw_sprite_ext(_items[_i].ui_sprite, !_items[_i].collected, _x_top_l + _bx, _y_top_l + _by, _s, _s, 0, c_white, 1);
	_bx += _item_buffer;
}

if (global.diamond == false) {			   
	
	//draw_text(_x_top_l, _y_top_l, _text1);
	//draw_text(_x_top_l + (_box_border/2), _y_top_l, _text2);*/
} else {
	/*
	var _time = ceil(round(global.timer/60));
			
	var _string1 = "Corra!";
	var _string2 = "Tempo: " + string(_time);
			
	var _stringw = string_width(_string2)  + _buffer;
	var _stringh = string_height(_string1) + string_height(_string2)
					+ _box_space + _buffer;
			
	draw_sprite_stretched(spr_box, 0, 32 - _buffer, 32 - _buffer,
	_stringw + _buffer, _stringh);
			
	draw_text(32, 32,		   _string1);
	draw_text(32, 32 + _box_space, _string2);*/
}
//reset
draw_setup();
}