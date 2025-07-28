
if (opening)
{
    if (image_index >= image_number - 1)
    {
        opening = false;
        opened = true;
        image_index = image_number - 1;
        image_speed = 0;
    }
}

if (closing)
{
    if (image_index <= 0)
    {
        closing = false;
        opened = false;
        image_index = 0;
        image_speed = 0;
    }
}

if (opened && !opening && !closing)
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    if (dist > 32)
    {
        closing = true;
        image_speed = -0.2;
    }
}