//setup
audio_falloff_set_model(audio_falloff_exponent_distance);

//emitter
emitter = audio_emitter_create();
audio_emitter_position(emitter, x, y, 0);
audio_emitter_falloff(emitter, 120, 240, 2);

//play sound at emitter
audio_play_sound_on(emitter, snd_toothless, 1, 1);