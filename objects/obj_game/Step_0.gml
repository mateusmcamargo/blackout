#region ITEMS

if (global.diamond) {
	global.items[0].collected = true;
	if (instance_exists(obj_diamond)) {
		obj_player.state = "pickup"; obj_diamond.collected = true
		
		if (can_play_sound_diamond) {
			audio_play_sound(snd_diamond_collect, 1, 0, 1, 0, 1.2);
			can_play_sound_diamond = false
		}
	} else {
		audio_stop_sound(snd_diamond_collect);
		can_play_sound_diamond = true;
	}
}

if (global.emerald) {
	global.items[1].collected = true;
	if (instance_exists(obj_emerald)) {
		obj_emerald.collected = true;
		instance_destroy(obj_emerald);
	}
}


if (global.ruby) {
	global.items[2].collected = true;
	if (instance_exists(obj_ruby)) {
		obj_ruby.collected = true
		instance_destroy(obj_ruby);
	}
}


#endregion

#region DEBUG

if (DEBUG) {global.debug = !global.debug}
if (PAUSE) {global.pause = !global.pause}

if (global.debug) {
	if (DEBUG_ROOM_SELECTOR) {debug_room_selector = !debug_room_selector}
	if (DEBUG_JUMP_PATH)	 {debug_jump_path     = !debug_jump_path}
} else {
	debug_room_selector = false;
	debug_jump_path     = false;
}

#endregion