x = mouse_x;
y = mouse_y;

//When LMB is pressed it randomizes the direction
if (mouse_check_button_released(mb_left)) {
	drift_angle = random(360);
}


drift_x += lengthdir_x(drift_speed, drift_angle);
drift_y += lengthdir_y(drift_speed, drift_angle);

// Convert fractional movement into whole pixels
var move_x = round(drift_x);
var move_y = round(drift_y);

// Preserve unused fractional movement
drift_x -= move_x;
drift_y -= move_y;

// Move the actual mouse cursor
// Only checks if they actually need to move
// clamp is so they the cursor doesn't drift off screen, this can be adjusted at some point
if (move_x != 0 || move_y != 0) {
    var new_x = clamp(window_mouse_get_x() + move_x, 0, window_get_width() - 1);
    var new_y = clamp(window_mouse_get_y() + move_y, 0, window_get_height() - 1);
	window_mouse_set(new_x, new_y);
}

