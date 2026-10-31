//wobble strength has to be more than .1
//This can't be zero because of the new approach I took, using a decay function
if (wobble_strength > 0.1)
{
    // Advance the wobble cycle
    wobble_angle += wobble_speed;

    // Follow the mouse while wobbling
    x = mouse_x + sin(wobble_angle) * wobble_strength;
    y = mouse_y + cos(wobble_angle * 0.8) * wobble_strength * 0.5;

    // Slowly decrease the wobble
    wobble_strength *= wobble_decay;
}
else
{
    //This is just a placeholder, might not be neccessary. 
    wobble_strength = 0;

    // Follow the mouse
    x = mouse_x;
    y = mouse_y;
}