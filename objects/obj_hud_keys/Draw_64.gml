// If the player instance does not exist,
/*if (!instance_exists(obj_player1))
{
	// Exit the event so it does not run
	exit;
}*/

// Draw the P1 HUD object itself
draw_self();

// This font will now be used for drawing text
draw_set_font(fnt_HUD);

draw_set_color(c_black)
draw_set_halign(textalign_left)
var valign = draw_get_valign()
draw_set_valign(textalign_middle)
draw_text(x + 40, y, string(global.num_keys));
draw_set_valign(valign);