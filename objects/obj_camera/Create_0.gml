//camera target
target = noone;

//game resolution
global.res_width  = 800;
global.res_height = 720;

//camera setup
global.view_index  = 0;
global.view_scale  = 5;
global.view_width  = global.res_width  / global.view_scale;
global.view_height = global.res_height / global.view_scale;
global.view_speed  = 0.12;

//look up and down
global.look_height = global.view_width/2;

//set window, gui and survace sizes
window_set_size(global.view_width * global.view_scale, global.view_height * global.view_scale);
display_set_gui_size(global.res_width, global.res_height);
surface_resize(application_surface,
				global.view_width * global.view_scale, global.view_height * global.view_scale);

//screenshake
shake_len  = 0;
shake_time = 0;

//making sure the window is in center
alarm[0] = 1;

//vsync
display_reset(0, true);