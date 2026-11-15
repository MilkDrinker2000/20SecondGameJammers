//local variable to calculate where the cursor is moving towards
var wobble_destination_x = 0;
var wobble_destination_y = 0;

//wobble strength has to be more than .1
//This can't be zero because of the new approach I took, using a decay function
if (wobble_strength > 0.1)
{
    // Advance the wobble cycle
    wobble_angle += wobble_speed;

    // Follow the mouse while wobbling
    wobble_destination_x = sin(wobble_angle) * wobble_strength * 0.5;
    wobble_destination_y = cos(wobble_angle * 0.4) * wobble_strength * 0.2;

    // Slowly decrease the wobble
    wobble_strength *= wobble_decay;
}
else
{
    //This is just a placeholder, might not be neccessary. 
   // wobble_strength = 0;

   
}
//The smoothing magic
wobble_offset_x = lerp(wobble_offset_x, wobble_destination_x, wobble_smoothness);
wobble_offset_y = lerp(wobble_offset_y, wobble_destination_y, wobble_smoothness);

//



 // Follow the mouse
    x = mouse_x + wobble_offset_x;
    y = mouse_y + wobble_offset_y;
	
	