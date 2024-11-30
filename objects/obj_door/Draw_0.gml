var outline_width = 8;
var outline_color = c_black

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_white, c_white, c_white, c_white, false);

draw_set_color(outline_color)
draw_line_width(bbox_left, bbox_top + outline_width/2, bbox_right, bbox_top + outline_width/2, outline_width);
draw_line_width(bbox_left, bbox_bottom - outline_width/2, bbox_right, bbox_bottom - outline_width/2, outline_width);
draw_line_width(bbox_left + outline_width/2, bbox_top + outline_width/2, bbox_left + outline_width/2, bbox_bottom - outline_width/2, outline_width);
draw_line_width(bbox_right - outline_width/2, bbox_top + outline_width/2, bbox_right - outline_width/2, bbox_bottom - outline_width/2, outline_width);

if(isKeyDoor){
	draw_sprite(spr_key, 1, (bbox_left + bbox_right)/2, (bbox_top + bbox_bottom)/2);
}