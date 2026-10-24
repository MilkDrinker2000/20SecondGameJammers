x = mouse_x;
y = mouse_y;


if (wobble_time > 0) {
    wobble_time--;

    var progress = 1 - (wobble_time / wobble_duration);
    var decay = power(wobble_time / wobble_duration, 1.5);

    x += sin(progress * 12) * wobble_strength_x * decay;
    y += cos(progress * 5) * wobble_strength_y * decay;
}

if (wobble_strength_x > 50) {
	
	wobble_strength_x -= 10;
}