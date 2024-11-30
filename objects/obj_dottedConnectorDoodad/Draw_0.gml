for(var i = 0; i < image_xscale; i++){
	for(var j = 0; j < image_yscale; j++){
		draw_circle_color(x + 12 + 24*i, y + 12 + 24*j, 10, c_black, c_black, false);
		if(isActivated) draw_circle_color(x + 12 + 24*i, y + 12 + 24*j, 8, c_green, c_green, false);
		else draw_circle_color(x + 12 + 24*i, y + 12 + 24*j, 8, c_red, c_red, false);
	}
}
