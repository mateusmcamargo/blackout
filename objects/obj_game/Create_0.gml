randomize();

if (!instance_exists(obj_audio))      {instance_create_layer(-32, -32, "Game", obj_audio)}
if (!instance_exists(obj_camera))     {instance_create_layer(-32, -32, "Game", obj_camera)}
if (!instance_exists(obj_particle))   {instance_create_layer(-32, -32, "Game", obj_particle)}
if (!instance_exists(obj_pause_menu)) {instance_create_layer(-32, -32, "Game", obj_pause_menu)}

#region MACROS

//inputs
#macro KEY_DEBUG "Q"
#macro KEY_DEBUG_ROOM_SELECTOR "E"
#macro KEY_DEBUG_JUMP_PATH     "R"

//game
#macro GAME_VERSION GM_version

//pause
#macro PAUSE input_check_pressed("pause")

//debug
#macro DEBUG			   keyboard_check_pressed(ord(KEY_DEBUG)) or gamepad_button_check_pressed(0, gp_select)
#macro DEBUG_ROOM_SELECTOR keyboard_check_pressed(ord(KEY_DEBUG_ROOM_SELECTOR))
#macro DEBUG_JUMP_PATH     keyboard_check_pressed(ord(KEY_DEBUG_JUMP_PATH))

//instances
#macro GRAVITY .45

//menu
#macro MENU_UP     keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
#macro MENU_DOWN   keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
#macro MENU_SELECT keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)


#endregion

#region GLOBAL VARIABLES

//debug
global.debug   = false;

//game
global.pause   = false;
global.diamond = false;
global.emerald = false;
global.ruby    = false;
global.rubies  = 0;

global.level   = 1;
global.timer   = 0;
window_set_cursor(cr_none);

//player
global.player_dead = false;

#endregion

#region ITEMS

num_items = 3;
global.items    = array_create(num_items);
global.items[0] = item_struct("diamond", spr_diamond, obj_diamond, global.diamond, spr_diamond_ui);
global.items[1] = item_struct("emerald", spr_emerald, obj_emerald, global.emerald, spr_emerald_ui);
global.items[2] = item_struct("ruby",	 spr_ruby,	  obj_ruby,	   global.ruby,    spr_ruby_ui);

#endregion

#region VARIABLES

//debug
debug_room_selector = false;
debug_jump_path		= false;

#endregion

#region DRAW

//text effects
font_enable_effects(fnt_debug, true, {
	outlineEnable: true,
	outlineDistance: 2,
	outlineColour: c_black,
	outlineAlpha: 1
});

//selection debug
draw_selection_x1 = 0;
draw_selection_y1 = 0;

//surfaces
surface_debug = surface_create(room_width, room_height);

#endregion

#region SOUNDS

can_play_sound_diamond = true;

#endregion