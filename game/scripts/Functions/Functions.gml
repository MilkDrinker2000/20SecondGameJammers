// if there is a "next" room, go to the next room
function go_to_next_room() 
{
	if (room_exists(room_next(room)))
	{
		room_goto_next();
	}
}

// go to the next room automatically after time seconds
// call clean_up_auto_advance_next_room() on a room end event for any object you call auto_advance_next_room() for
function auto_advance_next_room(time)
{
	next_room_timer = time_source_create(time_source_global, time, time_source_units_seconds, go_to_next_room)
	time_source_start(next_room_timer)
}

function clean_up_auto_advance_next_room() {
	time_source_destroy(next_room_timer)
}
