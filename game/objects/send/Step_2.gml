if (mouse_check_button(mb_left)){
	if (position_meeting(testcursor.x, testcursor.y, self)){
		if PhoneKeyboardMK1.current_text = PhoneKeyboardMK1.final_message{
		room_goto(success_screen);
		}
	}
}