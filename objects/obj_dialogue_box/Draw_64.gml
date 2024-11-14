/// @description Insert description here
// You can write your code in this editor
// Draw Event of obj_dialogue_box

// Draw the background rectangle
draw_set_halign(fa_left);
top_margin = 200;
left_margin = 500;
right_margin = 500;
bottom_margin = 700;
if(player_that_initiated == 1) draw_set_color(make_color_rgb(45, 0, 0));
else draw_set_color(make_color_rgb(0, 0, 45));
draw_roundrect(left_margin, top_margin, view_wport - right_margin, view_hport - bottom_margin, true);
draw_set_alpha(190)
draw_roundrect(left_margin, top_margin, view_wport - right_margin, view_hport - bottom_margin, false);

// Draw the dialogue text
text_top_margin = 100;
text_left_margin = 100;
draw_set_color(c_white);
draw_set_font(fnt_Dialogue); // Ensure you have your dialogue font set
var text_to_draw = scr_word_wrap(text, view_wport-left_margin-right_margin-2*text_left_margin, "\n", 8);
draw_text(left_margin + text_left_margin, text_top_margin + top_margin, text_to_draw); // Adjust the text and position
var offset_y = 100;
switch player_that_initiated{
	case 1:
		draw_text(view_wport - (text_left_margin + left_margin) - string_width("P2 Responses:"), text_top_margin + top_margin + 500, "P2 Responses:");
		for(i = 0; i < array_length(options); i++){
			if(i == selected_option) draw_set_color(c_red);
			else draw_set_color(c_white);
			if(options[i] != "") draw_text(view_wport - (text_left_margin + left_margin) - string_width(options[i]), text_top_margin + top_margin + 700 + offset_y*i, options[i]);
		}
		break;
	case 2:
	draw_text(text_left_margin + left_margin, text_top_margin + top_margin + 500, "P1 Responses:");
		for(i = 0; i < array_length(options); i++){
			if(i == selected_option) draw_set_color(c_red);
			else draw_set_color(c_white);
			if(options[i] != "") draw_text(left_margin + text_left_margin, text_top_margin + top_margin + 700 + offset_y*i, options[i]);
		}
		break;
}

