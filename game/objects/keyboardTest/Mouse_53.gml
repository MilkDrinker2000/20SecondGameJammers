if (point_in_rectangle(mouse_x, mouse_y, x, y, x+32, y+32))
	{
		selected_key = "a";
		text += selected_key;
	}			
	
else if (point_in_rectangle(mouse_x, mouse_y, x, y+33, x+33, y+64))
	{
		selected_key = "c";
		text += selected_key;
	}	
else if (point_in_rectangle(mouse_x, mouse_y, x+33, y, x+64, y+33))
	{
		selected_key = "b";
		text += selected_key;
	}	
else if (point_in_rectangle(mouse_x, mouse_y, x+33, y+33, x+64, y+64))
	{
		selected_key = "d";
		text += selected_key;
	}