/// @description Insert description here
// You can write your code in this editor
if(parent != -1){
	draw_set_color(make_color_rgb(80, 45, 10));
	draw_line_width(x, y, parent.x, parent.y,  15 * (1 - scr_get_rope_length()/global.max_tolerable_rope_length) + 25)
	draw_circle(x, y, 7, false)
}
