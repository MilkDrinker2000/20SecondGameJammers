if play_delay_start = true {
	play_delay --;
}
if play_delay <= 0 {
	room_goto(game_play);
	play_delay_start = false;
	play_delay = 5;
}

