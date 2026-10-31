////Note: This has to be Global Left Click/Released.
////A normal click event might not work because the object moves around



// Increase wobble strength with each click
wobble_strength += wobble_boost;

// Prevent the wobble from becoming too strong
wobble_strength = min(wobble_strength, wobble_max);