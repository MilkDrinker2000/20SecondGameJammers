current_room = room_get_name(room);
if room == game_play  {
	var playbgm = audio_play_sound(gameplaybgm,2,true);
	audio_sound_gain(playbgm,0,0);
	audio_sound_gain(playbgm,0.8,3000);
}

if room == success_screen {
	var winbgm = audio_play_sound(successbgm,3,true);
	audio_sound_gain(winbgm,0,0);
	audio_sound_gain(winbgm, 0.8,5000);
}
if room == game_over {
	var losebgm = audio_play_sound(failurebgm,4,true);
	audio_sound_gain(losebgm,0,0);
	audio_sound_gain(losebgm,0.8,5000);
}
if room == main_menu and audio_is_playing(introbgm) = false {
	audio_play_sound(introbgm,5,true,0.8,0,1,1);
}
