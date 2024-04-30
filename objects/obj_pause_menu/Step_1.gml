if (global.pause) {
	
	//variables
	var _up     = input_check_pressed("up");
	var _down   = input_check_pressed("down");
	var _accept = input_check_pressed("accept");

	//store number of optiions in current menu
	lenght = array_length(option[level]);

	//scroll through options
	if (_up or _down) {audio_play_sound(snd_menu_move, 2, 0)}
	selected += _down - _up;
	if (selected < 0)	    {selected = lenght - 1}
	if (selected >= lenght) {selected = 0}

	if (_accept) {
		
		audio_play_sound(snd_menu_accept, 2, 0);
	
		var _sml = level;
	
		switch(level) {
		
			//pause menu
			case 0:
				switch(selected) {

					case 1:  room_restart(); break;
					case 2:  level = 1 break;
					case 3:  game_end(); break;
					default: global.pause = false;
		
				}
			break;
		
			//settings menu
			case 1:
				switch(selected) {

					case 0:  break;//windowsize
					case 1:  break;//brigthness
					case 2:  break;//controls
					default: level = 0;
		
				}
			break;
		}
	
		//set the selected position back
		if (_sml != level) {selected = 0}
	
		//correct options lenght
		lenght = array_length(option[level]);
	}

}