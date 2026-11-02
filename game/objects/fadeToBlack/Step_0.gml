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