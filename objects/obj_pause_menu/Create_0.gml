width = 64;
height = 104;

border = 16;
space  = 32;

option[0, 0] = "RESUME";
option[0, 1] = "RESTART";
option[0, 2] = "OPTIONS";
option[0, 3] = "EXIT";

//options
option[1, 0] = "WINDOW SIZE";
option[1, 1] = "BRIGHTNESS";
option[1, 2] = "CONTROLS";
option[1, 3] = "BACK";
		 
lenght   = 0;
level    = 0;
selected = 0;

/*
if (global.pause) {
	
draw_setup(fnt_pause_menu, c_white, fa_center, fa_middle);
//vars


var _text_num = array_length(_texts);
var _b = -_buffer*2;

var _y1 = 16;
var _y2 = _y1 + _buffer;
var _y3 = _y2 + _buffer;

var _s_w;
var _s_h;

for (var _i = 0; _i < _text_num; _i ++) {
	_s_w = string_width(_texts[_i]);
	_s_h = string_height(_texts[_i]);
}

var _box_w = ((16 * 3) * global.view_scale);
var _box_h = ((16 * 3) * global.view_scale);

//draw menu bg
draw_sprite_stretched(spr_menu_box, 0, _x_center - _box_w/2, _y_center - _box_h/2, _box_w, _box_h);

//draw text
for (var _i = 0; _i < _text_num; _i ++) {

	draw_text(_x_center, _y_center + _b, _texts[_i]);
	_b += _buffer*2;
}

//reset
draw_setup();
}