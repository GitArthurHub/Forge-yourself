if (keyboard_check(ord("A")))
{
    sprite_index = ani_playera;
    image_speed = 1.5;
}

else if (keyboard_check(ord("D")))
{
    sprite_index = ani_playerd;
    image_speed = 1.5;
}

else
{
    image_index = 1;
    image_speed = 0;
}

draw_self();