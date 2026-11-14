if text_timer > 0 {
	text_timer --;
}
clamp(alpha, 0, 1);
clamp(text_timer,0,90);

if text_timer == 0 {
	alpha += alpha_speed * alpha_direction;
	text_exit --;
}
if text_exit <= 0 {
	alpha_direction = -1;
	alpha += alpha_speed * alpha_direction;
}
	