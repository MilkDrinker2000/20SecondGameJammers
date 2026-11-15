// Advance the effect while it's active
if (ripple_active)
{
    ripple_elapsed += delta_time / 1000000;

    ripple_elapsed = clamp(
        ripple_elapsed,
        0,
        ripple_duration
    );
	
	// deactivate the ripple effect once the full ripple duration has elapsed
	if (ripple_elapsed = ripple_duration) {
		ripple_active = false;
	}
}