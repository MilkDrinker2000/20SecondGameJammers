draw_self();

//set the font
draw_set_font(testFont);

//draws the text
draw_text_transformed_colour(x+384, y+408, current_text, 1, 1, 2, c_green, c_green, c_green, c_green, 1);

//grayed out test that the player needs to write
draw_text_transformed_colour(x+384, y+408, final_message, 1, 1, 2, c_grey, c_grey, c_grey, c_grey, 0.3);
