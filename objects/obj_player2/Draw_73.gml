/// @description Insert description here
// You can write your code in this editor
if(parent != -1){
	var _scalar = 33;
	var _min = 20;
	var _max = 35;
	var _line_thickness = clamp((_max - _min) * _scalar * (1 - global.current_rope_length/global.max_tolerable_rope_length) + _min, _min, _max)
	
	if(global.rope_is_strained) draw_set_color(make_color_rgb(120, 35, 10));
	else draw_set_color(make_color_rgb(80, 50, 25));
	draw_line_width(x, y, parent.x, parent.y, _line_thickness);
	draw_circle(x, y, _line_thickness/2, false);
}