// if there is a "next" room, go to the next room
function go_to_next_room() 
{
	if (room_exists(room_next(room)))
	{
		room_goto_next();
	}
}