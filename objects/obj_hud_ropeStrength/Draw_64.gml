/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_font(Font_RopeStrength);
if(global.rope_is_strained) draw_set_color(make_color_rgb(180, 50, 30))
else draw_set_color(make_color_rgb(80, 50, 25));
draw_text(x, y, string_concat("Rope Strain: ", round(global.rope_strain)));
draw_self();