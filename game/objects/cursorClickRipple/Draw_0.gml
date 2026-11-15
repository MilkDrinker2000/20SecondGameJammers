// destroy the instance so it doesn't leave the ripple drawing lingering on screen
if (!ripple_active) {
	instance_destroy()
	exit;
}

// center of the ripple
var cx = cursor.x;
var cy = cursor.y;

// progress of ripple represented from 0 to 1
// +/- progress increases/decreases visible area over time
var progress = ripple_elapsed / ripple_duration;

// inner radius of the ripple
var inner_radius = 3 + progress;

// how far the ripple extends
// higher feather = larger ripple
var feather = 20 * progress;

// outer radius of the ripple
var outer_radius = inner_radius + feather;

draw_set_alpha(1);


// draws the inner to outer radius of the ripple
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
        c_black, 0.6
    );
}

draw_primitive_end();

// draws softened outer edge of the ripple
draw_primitive_begin(pr_trianglestrip);

for (var i = 0; i <= circle_segments; i++)
{
    var angle = (i / circle_segments) * pi * 2;

    var dx = cos(angle);
    var dy = sin(angle);

    draw_vertex_colour(
        cx + dx * outer_radius,
        cy + dy * outer_radius,
        c_black, 0.6
    );
	
	draw_vertex_colour(
        cx + dx * (outer_radius + 3),
        cy + dy * (outer_radius + 3),
        c_black, 0
    );
}

draw_primitive_end();