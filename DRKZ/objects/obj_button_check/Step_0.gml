/// @description Insert description here
// You can write your code in this editor

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
}

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		global.display = true;
		global.canRepeat = true;
	}
	
}