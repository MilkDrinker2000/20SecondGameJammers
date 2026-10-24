// step ticks every frame (60fps)

wobble_full_duration = 60; // constant; how long a full wobble lasts for (currently set for 3 seconds)
wobble_time = 0; // remaining time for the current wobble  (essentially the countdown variable)

wobble_strength_x_init = 10; // constant; baseline value for wobble strength in the x-axis
wobble_strength_y_init = 10; // constant; baseline value for wobble strength in the y-axis
wobble_strength_x = wobble_strength_x_init; // how much the cursor deviates in the x-axis
wobble_strength_y = wobble_strength_y_init; // how much the cursor deviates in the y-axis


wobble_cooldown_duration = 60; // constant; how long until the wobble strength resets to baseline
wobble_cooldown = 0; // remaining time until the wobble strength resets to baseline



// This hides the cursor
window_set_cursor(cr_none);