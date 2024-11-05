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

// Draw the player's identity below(?) this instance
draw_set_color(c_fuchsia)
draw_text(x-88, y+70, string("Player 1"));