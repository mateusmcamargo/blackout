if (global.debug) {

	if (instance_exists(obj_player)) {
		with(obj_player) {
			//setup
			draw_setup(fnt_draw, c_white, fa_center, fa_bottom);

			draw_self();

			//draw debug info
			draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, image_blend, .5);
			draw_text(x, y - sprite_height, state);

			//reset
			draw_setup();
		}
	}

	if (debug_jump_path) {
		var _e = obj_player
		if (instance_exists(_e)) {with(_e) {instance_create_layer(x, y, "Player", obj_pixel)}}
	}

}