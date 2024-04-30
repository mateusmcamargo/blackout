if (collected) {
	var _x = obj_player.x - sprite_height / 2;
	var _y = obj_player.y - sprite_height * 2;
			
	x = lerp(x, _x, .1);	
	y = lerp(y, wave(_y - 1.5, _y + 3, 1, 0), .08);	
} else {
	y = wave(ystart - 4, ystart + 4, 1, 0);
}

timer_shine --;
if (timer_shine <= default_timer_shine) {
	shine_x = lerp(shine_x, shine_x + sprite_width,  .03);
	shine_y = lerp(shine_y, shine_y - sprite_height, .03);
}
if (timer_shine <= 0) {
	timer_shine = default_timer_shine;
	shine_x	= x - sprite_width;
	shine_y = y + sprite_height;
}	