if (position_meeting(mouse_x, mouse_y, id))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    
    if (!opened && !opening && !closing && dist < 32)
    {
        opening = true;
        image_speed = 0.2;
        image_index = 0;
    }
    else if (opened && !opening && !closing && dist < 32)
    {
        closing = true;
        image_speed = -0.2;
    }
}