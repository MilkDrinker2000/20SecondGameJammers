x = mouse_x;
y = mouse_y;


if (wobble_time > 0) {
    wobble_time--;

    wobble_true += wobble_gain;
	
    var decay = power(clamp(wobble_time / wobble_duration,0,1), 0.5);

    x += sin(wobble_true * 2) * wobble_strength_x * decay;
    y += cos(wobble_true) * wobble_strength_y * decay;
}

if (wobble_strength_x > 50) {
	
	wobble_strength_x = max(50, wobble_strength_x - 0.5);
}

if (wobble_strength_y > 30) {
	
	wobble_strength_y = max(30, wobble_strength_y - 0.5);
}