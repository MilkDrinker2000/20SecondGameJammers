x = mouse_x;
y = mouse_y;

// the wobble cooldown is active so count it down
if (wobble_cooldown > 0)
{
	wobble_cooldown--;
}
// the wobble has cooled down so reset the wobble strength
else
{
	wobble_strength_x = wobble_strength_x_init;
	wobble_strength_y = wobble_strength_y_init;
}

// counts down the wobble_time and applies the wobble
if (wobble_time > 0)
{
	wobble_time--;
	
	var progress = 1 - (wobble_time / wobble_full_duration);
	var decay = power(wobble_time / wobble_full_duration, 1.5);
	
	x += sin(progress * 12) * wobble_strength_x * decay;
	y += cos(progress * 5) * wobble_strength_y * decay;
}

