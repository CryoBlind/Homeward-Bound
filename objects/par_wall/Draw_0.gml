// Get the sprite you want to draw
var spr = spr_Wallcolor;

// Check if the sprite exists
if (sprite_exists(spr)) {
    // Get the sprite width and height
    var spr_width = sprite_get_width(spr);
    var spr_height = sprite_get_height(spr);

    // Get the bounding box of the object
    var left = bbox_left;
    var right = bbox_right;
    var top = bbox_top;
    var bottom = bbox_bottom;

    // Loop through the bounding box to tile the sprite
    for (var j = top; j < bottom; j += spr_height) {
        for (var i = left; i < right; i += spr_width) {
            draw_sprite(spr, 0, i, j);
        }
    }
} else {
    show_error("Sprite 'spr_Wallcolor' is missing or not set!", true);
}