if (keyboard_check(ord("A")))
	x -= movement_speed;
	
if (keyboard_check(ord("D")))
	x += movement_speed;
	
	
if (keyboard_check_pressed(vk_tab))
{
    gui_open = !gui_open;
}
