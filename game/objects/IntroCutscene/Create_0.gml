// setup for the text generated during the intro cutscene
strings = ["Doctor: The prognosis isn't good.",
			"Doctor: You only have 20 seconds left to live.",
			"Doctor: You might want to let someone know."];
string_selected = 0; // current index of the strings array
time_change = 5;	// time in seconds to change the strings by
time_timer = time_change * 60; // 60 = fps

// length of the intro cutscene in seconds; used to determine when to auto advance to the next room
intro_cutscene_length = time_change * array_length(strings);

// where the text is drawn on the screen
string_draw_start_x = 225;
string_draw_start_y = 550;

// automatically advance from the custcene to the main menu after the cutscene is over
auto_advance_next_room(intro_cutscene_length)