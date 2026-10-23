if (point_in_rectangle(mouse_x, mouse_y, x, y, x+80, y+80))
	{
		selected_key = "a";
		text += selected_key;
	}				
else if (point_in_rectangle(mouse_x, mouse_y, x, y+81, x+80, y+160))
	{
		selected_key = "c";
		text += selected_key;
	}	
else if (point_in_rectangle(mouse_x, mouse_y, x+81, y, x+160, y+80))
	{
		selected_key = "b";
		text += selected_key;
	}	
else if (point_in_rectangle(mouse_x, mouse_y, x+81, y+81, x+160, y+160))
	{
		selected_key = "d";
		text += selected_key;
	}