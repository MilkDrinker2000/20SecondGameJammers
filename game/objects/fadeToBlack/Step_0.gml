// Press F to test the effect
if (keyboard_check_pressed(ord("F")))
{
    fade_active = true;
    fade_elapsed = 0;
}

// Advance the effect while it's active
if (fade_active)
{
    fade_elapsed += delta_time / 1000000;

    fade_elapsed = clamp(
        fade_elapsed,
        0,
        fade_duration
    );
}