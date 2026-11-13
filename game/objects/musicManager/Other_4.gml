current_room = room_get_name(room);
if room == game_play  {
	audio_play_sound(gameplaybgm,2,true);
}
if room == success_screen {
	audio_play_sound(successbgm,3,true);
}
if room == game_over {
	audio_play_sound(failurebgm,4,true);
}
if room == main_menu and audio_is_playing(introbgm) = false {
	audio_play_sound(introbgm,5,true);
}
