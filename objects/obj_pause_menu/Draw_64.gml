if (global.pause) {

	#region VARIABLES

	//display center
	var _x_center = (display_get_gui_width()/2);
	var _y_center = (display_get_gui_width()/2);

	var _btn_size = 16;

	var _spr   = spr_menu_box
	var _spr_w = sprite_get_width(_spr);
	var _spr_h = sprite_get_height(_spr);

	var _new_w = 0;
	for (var _i = 0; _i < lenght; _i ++) {
		var _w = string_width(option[level, _i]);
		_new_w = max(_new_w, _w);
	}
	width  = border * 2 +_new_w;
	height = border * 2 + font_get_size(fnt_pause_menu) + (lenght - 1) * space;

	#endregion

	//setup
	draw_setup(fnt_pause_menu, c_white, fa_left, fa_top);

	//draw background
	var _w2 = width/_spr_w;
	var _h2 = height/_spr_h
	var _x = _x_center + _w2;
	var _y = _y_center + _h2;
	
	draw_sprite_ext(_spr, 0, _x, _y, _w2, _h2, 0, c_white, 1);

	for (var _i = 0; _i < lenght; _i ++) {
		var _c = c_white
		if (selected == _i) {_c = c_yellow}
		draw_text_color(_x, _y + space * _i, option[level, _i], _c, _c, _c, _c, 1);
	}

	//reset
	draw_setup();

}