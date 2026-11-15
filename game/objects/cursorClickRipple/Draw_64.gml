// Get the GUI dimensions
var w = display_get_gui_width();
var h = display_get_gui_height();

var cx = w / 2;
var cy = h / 2;

// Calculate progress from 0 to 1
var progress = fade_elapsed / fade_duration;

// Smooth the progression
var eased = progress * progress * (3 - 2 * progress);

// Distance from screen center to a corner
var max_radius = point_distance(0, 0, cx, cy);

// Shrink the visible area over time
var inner_radius = max_radius * (1 - eased);

// Width of the blurry edge
var feather = max_radius * feather_strength * (1 - eased);

var outer_radius = inner_radius + feather;

// A radius large enough to cover the whole screen
var far_radius = max_radius * 3;

// Once time runs out, cover the entire screen
if (progress >= 1)
{
    draw_set_color(c_black);
    draw_set_alpha(0.90);
    draw_rectangle(0, 0, w, h, false);
    draw_set_color(c_white);
    exit;
}

draw_set_alpha(1);

// FIRST RING: Soft transition
draw_primitive_begin(pr_trianglestrip);

for (var i = 0; i <= circle_segments; i++)
{
    var angle = (i / circle_segments) * pi * 2;

    var dx = cos(angle);
    var dy = sin(angle);

    draw_vertex_colour(
        cx + dx * inner_radius,
        cy + dy * inner_radius,
        c_black, 0
    );

    draw_vertex_colour(
        cx + dx * outer_radius,
        cy + dy * outer_radius,
        c_black, 0.9
    );
}

draw_primitive_end();

// SECOND RING: Fully black outer area
draw_primitive_begin(pr_trianglestrip);

for (var i = 0; i <= circle_segments; i++)
{
    var angle = (i / circle_segments) * pi * 2;

    var dx = cos(angle);
    var dy = sin(angle);

    draw_vertex_colour(
        cx + dx * outer_radius,
        cy + dy * outer_radius,
        c_black, 0.9
    );

    draw_vertex_colour(
        cx + dx * far_radius,
        cy + dy * far_radius,
        c_black, 0.9
    );
}

draw_primitive_end();