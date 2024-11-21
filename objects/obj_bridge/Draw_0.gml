/// @description Insert description here
// You can write your code in this editor

for (var j = 0; j < image_yscale; j++) {
    for (var i = 0; i < image_xscale; i++) {
        draw_sprite(sprite_index, 1, x + i*256, y + j*256);
    }
}