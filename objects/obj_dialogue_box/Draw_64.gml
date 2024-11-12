/// @description Insert description here
// You can write your code in this editor
// Draw Event of obj_dialogue_box

// Draw the background rectangle
top_margin = 200;
left_margin = 500;
right_margin = 500;
bottom_margin = 700;
draw_set_color(c_black);
draw_roundrect(left_margin, top_margin, view_wport - right_margin, view_hport - bottom_margin, true);
draw_set_alpha(190)
draw_roundrect(left_margin, top_margin, view_wport - right_margin, view_hport - bottom_margin, false);

// Draw the dialogue text
text_top_margin = 100;
text_left_margin = 100;
draw_set_color(c_white);
draw_set_font(fnt_Dialogue); // Ensure you have your dialogue font set
draw_text(view_wport/2, text_top_margin + top_margin, text); // Adjust the text and position
var offset_y = 100;
switch player_that_initiated{
	case 1:
		for(i = 0; i < array_length(options); i++){
			if(i == selected_option) draw_set_color(c_red);
			else draw_set_color(c_white);
			if(options[i] != "") draw_text(view_wport/2 + (text_left_margin + left_margin), text_top_margin + top_margin + 300 + offset_y*i, options[i]);
		}
		break;
	case 2:
		for(i = 0; i < array_length(options); i++){
			if(i == selected_option) draw_set_color(c_red);
			else draw_set_color(c_white);
			if(options[i] != "") draw_text(view_wport/2 - (text_left_margin + left_margin), text_top_margin + top_margin + 300 + offset_y*i, options[i]);
		}
		break;
}

