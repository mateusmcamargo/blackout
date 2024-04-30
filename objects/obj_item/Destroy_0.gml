instance_create_layer(x + sprite_width/2, y + sprite_height/2, "Effects", obj_effect, {
	sprite_index: spr_dust_explosion	
})
audio_play_sound(snd_enemy_pop, 1, 0, 4);