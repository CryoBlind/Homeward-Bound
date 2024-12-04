var outline_width = 8;
var outline_color = c_black

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_white, c_white, c_white, c_white, false);

draw_set_color(outline_color)
draw_line_width(bbox_left, bbox_top + outline_width/2, bbox_right, bbox_top + outline_width/2, outline_width);
draw_line_width(bbox_left, bbox_bottom - outline_width/2, bbox_right, bbox_bottom - outline_width/2, outline_width);
draw_line_width(bbox_left + outline_width/2, bbox_top + outline_width/2, bbox_left + outline_width/2, bbox_bottom - outline_width/2, outline_width);
draw_line_width(bbox_right - outline_width/2, bbox_top + outline_width/2, bbox_right - outline_width/2, bbox_bottom - outline_width/2, outline_width);

if(isKeyDoor){
	if(numButtonsRequired > 1){
		draw_sprite(spr_key, 1, (bbox_left + bbox_right)/2 - (string_width(text)/2 + 3), (bbox_top + bbox_bottom)/2);
		draw_text((bbox_left + bbox_right)/2 + (string_width(text)/2 + 6), (bbox_top + bbox_bottom)/2 - string_height(text)/2, text);
	}
	else draw_sprite(spr_key, 1, (bbox_left + bbox_right)/2, (bbox_top + bbox_bottom)/2);
}