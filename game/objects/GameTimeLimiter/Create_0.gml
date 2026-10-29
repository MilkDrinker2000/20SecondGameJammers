// go to the next room
function go_to_next_room() 
{
	if (room_exists(room_next(room)))
	{
		room_goto_next();
	}
}

// go to the next room automatically after 20 seconds, ending the gameplay
next_room_timer = time_source_create(time_source_global, 20, time_source_units_seconds, go_to_next_room);
time_source_start(next_room_timer)