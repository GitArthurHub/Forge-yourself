var base_x = 8;
var base_y = 8;

var scale = 0.4; // grootte van elk slot
var slot_size = 32 * scale;
var spacing = slot_size + 1;


for (var i = 0; i < 3; i++)
{
    var slot_x = base_x + i * spacing;
    var slot_y = base_y;

    draw_sprite_ext(spr_inventoryslot, 0, slot_x, slot_y, scale, scale, 0, c_white, 1);

    if (inventory[i] != -1 && inventory_sprites[i] != noone)
    {
        draw_sprite_ext(inventory_sprites[i], 0, slot_x, slot_y, scale, scale, 0, c_white, 1);
    }
}

// uitgeklapte inventaris
if (gui_open)
{
    var world_x = x;
    var world_y = y - 64; // pixels boven speler

    // speler neemt camera mee
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);

    var player_gui_x = world_x - cam_x;
    var player_gui_y = world_y - cam_y;

    // inventaris centreren boven speler (tweak deze om de locatie te veranderen
    var base_x = player_gui_x - (spacing * 1.5) + 13; 
	var base_y = player_gui_y + 20; 

    for (var i = 3; i < 12; i++)
    {
        var col = (i - 3) mod 3;
        var row = (i - 3) div 3;

        var slot_x = base_x + col * spacing;
        var slot_y = base_y + row * spacing;

        draw_sprite_ext(spr_inventoryslot, 0, slot_x, slot_y, scale, scale, 0, c_white, 1);

        if (inventory[i] != -1 && inventory_sprites[i] != noone)
        {
            draw_sprite_ext(inventory_sprites[i], 0, slot_x, slot_y, scale, scale, 0, c_white, 1);
        }
    }
}