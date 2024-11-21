// Loop through the bounding box to tile the sprite
for (var j = 0; j < image_yscale - 1; j++) {
    for (var i = 0; i < image_xscale; i++) {
        draw_sprite(sprite_index, 1, x + i*256, y + j*256);
    }
}