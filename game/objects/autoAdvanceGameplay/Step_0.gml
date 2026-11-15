game_timer ++;

if game_timer >= 1200 and send.pressed_send = true {
	room_goto(success_screen);
}
if game_timer >= 1200 and send.pressed_send = false {
	room_goto(game_over);
}
	