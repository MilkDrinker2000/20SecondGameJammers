
var center_x = display_get_gui_width() / 2;

// Set text appearance
draw_set_font(testFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw the title
draw_set_color(c_white);
draw_text(center_x, 60, "CREDITS");

// Loop through the credits
for (var i = 0; i < array_length(credits); i++)
{
    // Get the role and name
    var role = credits[i][0];
    var person = credits[i][1];

    // Calculate vertical position
    var y_pos = credits_y + (i * credits_spacing);

    // Draw role
    draw_set_color(c_yellow);
    draw_text(center_x, y_pos, role);

    // Draw name
    draw_set_color(c_white);
    draw_text(center_x, y_pos + credits_offset, person);
}

// Reset drawing settings
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
