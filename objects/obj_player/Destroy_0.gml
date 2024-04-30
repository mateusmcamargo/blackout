var _list  = global.audio_list_sfx_player_hit;
var _rand  = audio_list_get_random(_list);

audio_play_sound(_rand.id, 2, 0);

instance_create_layer(x, y, "Effects", obj_effect, {sprite_index: spr_dust_explosion})