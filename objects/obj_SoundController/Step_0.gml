if(room != room_last_step){
	if(room == Room_MainMenu || room == Room_lvlSelect || room == Room_Credits || room == WinRoom){
		//play piano music
		if(!(room_last_step == Room_MainMenu || room_last_step == Room_lvlSelect || room_last_step == Room_Credits || room_last_step == WinRoom)){
			audio_stop_all();
			audio_play_sound(snd_menuMusic, 1, true);
		}
	}
	else{
		//play other music
		audio_stop_all();
		audio_play_sound(snd_gameplayMusic, 1, true);
	}
	room_last_step = room;
}
