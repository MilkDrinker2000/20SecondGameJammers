// add/reset wobble_time
wobble_time = wobble_full_duration;
wobble_cooldown = wobble_cooldown_duration;

// if the user clicks and the wobble_cooldown hasn't reset yet, increase the wobble strength
if (wobble_cooldown > 0)
{
	// increase the amount of wobble
	wobble_strength_x += 20;
	wobble_strength_y += 0; // no vertical wobble for now for simpler game play
}
