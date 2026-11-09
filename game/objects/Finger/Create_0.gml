//// Wobble settings

//This is the actual strength of the wobble
wobble_strength = 0;

//This is how much is added to the wobble, CONSTANT
wobble_boost = 100;

//This is the maximum allowed wobble, CONSTANT
wobble_max = 350;

//This is effects the angle of the wobble, CONSTANT
wobble_speed = 0.05;

//This effects how quickly the wobble decays, CONSTANT
wobble_decay = 0.99;

//This is the angle of the wobble
wobble_angle = 0;

//New variables for smoothing out the wobble
wobble_offset_x = 0;
wobble_offset_y = 0;
wobble_smoothness = 0.05; //closer to zero equals slower smoothing out

//This hides the cursor
window_set_cursor(cr_none);