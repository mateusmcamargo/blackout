// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function audio_group_is_playing(_audio_group_ds){
	
	for (var _i = 0; _i <  ds_list_size(_audio_group_ds); _i ++) {
		
		var _snd = ds_list_find_value(_audio_group_ds, _i);
		
	    if (audio_is_playing(_snd.id)) {return true}
	}
	
	return false;
}


// Example:
//		var _list  = global.audio_list_sfx_run_grass;
//		var _rand  = audio_list_get_random(_list);
//		var _pitch = random_range(1.3, 1.5);
//		if (!audio_group_is_playing(_list)) {audio_play_sound(_rand.id, 1, 0, 1, 0, _pitch)}

// the code above get the list name, uses the script to get
// a random list item and uses its id to play the sound
function audio_list_get_random(_list_name) {
	
	var _list = {
		nam: _list_name,
		siz: real,
		ind: real,
		val: real
		}

	_list.siz = ds_list_size(_list.nam);
	_list.ind = irandom(_list.siz - 1);
	_list.val = ds_list_find_value(_list.nam, _list.ind);
	
	return _list.val;
		
}
/*
// Loop through the list and perform operations on the sounds
for (var i = 0; i < ds_list_size(audio_group); i++) {
  var sound = ds_list_find_value(audio_group, i);
  // For example, you could change the volume or pitch of the sounds
  sound.volume -= 0.1;
  sound.pitch += 0.1;
  audio_sound_gain(sound.id, sound.volume, 0);
  audio_sound_pitch(sound.id, sound.pitch);
}