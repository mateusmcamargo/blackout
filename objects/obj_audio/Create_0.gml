#region MACROS

#macro AUDIO_ARRAY_PLAYER_LAND_STONE  snd_land_concrete_1 snd_land_concrete_2
#macro AUDIO_ARRAY_PLAYER_WALK_STONE  snd_walk_concrete_1 snd_walk_concrete_2, snd_walk_concrete_3

#endregion

#region AUDIO GROUPS



#endregion

#region VARIABLES

var _list_name, _list_assets, _list_size,
	_sfx,
	_sfx1, _sfx2, _sfx3, _sfx4, _sfx5, 

#endregion

#region DATA STRUCTURES

/*
//create list
global.audio_list_sfx = ds_list_create();
_list_name = global.audio_list_sfx;

//create a struct for each sound and add it to the list
_sfx1 = {id: snd_run_concrete_1};
_sfx2 = {id: snd_run_concrete_2};
_sfx3 = {id: snd_land_concrete_1};
_sfx4 = {id: snd_land_concrete_2};
_sfx5 = {id: snd_land_concrete_3};

//add each sound to the list
ds_list_add(_list_name, _sfx1);
ds_list_add(_list_name, _sfx2);
ds_list_add(_list_name, _sfx3);
ds_list_add(_list_name, _sfx4);
ds_list_add(_list_name, _sfx5);
*/

// --------------------------------------------------------- \\

/*

***** NOTE *****

transform _list_assets in arrays, instead of using audio groups (maybe)

*/

//create list
global.audio_list_sfx_run_concrete = ds_list_create();
_list_name   = global.audio_list_sfx_run_concrete;
_list_assets = audio_group_get_assets(sfx_run_concrete);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_land_concrete = ds_list_create();
_list_name   = global.audio_list_sfx_land_concrete;
_list_assets = audio_group_get_assets(sfx_land_concrete);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_run_grass = ds_list_create();
_list_name   = global.audio_list_sfx_run_grass;
_list_assets = audio_group_get_assets(sfx_run_grass);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_land_grass = ds_list_create();
_list_name   = global.audio_list_sfx_land_grass;
_list_assets = audio_group_get_assets(sfx_land_grass);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_run_metal = ds_list_create();
_list_name   = global.audio_list_sfx_run_metal;
_list_assets = audio_group_get_assets(sfx_run_metal);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_land_metal = ds_list_create();
_list_name   = global.audio_list_sfx_land_metal;
_list_assets = audio_group_get_assets(sfx_land_metal);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_run_carpet = ds_list_create();
_list_name   = global.audio_list_sfx_run_carpet;
_list_assets = audio_group_get_assets(sfx_run_carpet);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_land_carpet = ds_list_create();
_list_name   = global.audio_list_sfx_land_carpet;
_list_assets = audio_group_get_assets(sfx_land_carpet);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

//create list
global.audio_list_sfx_player_hit = ds_list_create();
_list_name   = global.audio_list_sfx_player_hit;
_list_assets = audio_group_get_assets(sfx_player_hit);
_list_size   = array_length(_list_assets)

//create a struct for each sound and add it to the list
for (var _i = 0; _i < _list_size; _i ++) {
	_sfx[_i] = {id: _list_assets[_i]};
	ds_list_add(_list_name, _sfx[_i]);
}

// --------------------------------------------------------- \\

#endregion

/*

	PRIORITY
	
	1 - music
	2 - player required
	3 - player optional
	4 - all the rest
	
*/

/*

***** DOCS *****

* AUDIO LISTS NAMES

global.audio_list_[name of the audio group it references]

* CREATING AUDIO LISTS

//create lists
global.audio_group_sfx = ds_list_create()

//create a struct for each sound and add it to the list
var _sfx1 = {id: snd_walk_concrete_1,};
var _sfx2 = {id: snd_walk_concrete_2,};
var _sfx3 = {id: snd_walk_concrete_3,};
var _sfx4 = {id: snd_land_concrete_1,};
var _sfx5 = {id: snd_land_concrete_2,};

//add each sound to the list
ds_list_add(global.audio_group_sfx, _sfx1);
ds_list_add(global.audio_group_sfx, _sfx2);
ds_list_add(global.audio_group_sfx, _sfx3);
ds_list_add(global.audio_group_sfx, _sfx4);
ds_list_add(global.audio_group_sfx, _sfx5);

* CHECKING IF A LIST IS BEING PLAYED AND PLAY A RANDOM SOUND FROM IT

var _list_size = ds_list_size(global.audio_list_sfx);
var _index     = irandom(_list_size - 1);
var _value     = ds_list_find_value(global.audio_list_sfx, _index);

	 *custom script*
			^
if (!audio_group_is_playing(global.audio_list_sfx)) {audio_play_sound(_value, 1, 0)}


/*



*/