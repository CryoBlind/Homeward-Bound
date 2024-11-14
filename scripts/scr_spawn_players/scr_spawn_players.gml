// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_players(spawner, rope_length, player1_type, player2_type, knot_is_baggage){
	player1_struct = {player_attachment_type : player1_type}
	player2_struct = {player_attachment_type : player2_type}

	global.player1_var.phy_position_x = spawner.x;
	global.player1_var.phy_position_y = spawner.y - (rope_length * 48)/2;
	global.player2_var.phy_position_x = spawner.x;
	global.player2_var.phy_position_y = spawner.y + (rope_length * 48)/2;
	
	global.player1_var.x = spawner.x;
	global.player1_var.y = spawner.y - (rope_length * 48)/2;
	global.player2_var.x = spawner.x;
	global.player2_var.y = spawner.y + (rope_length * 48)/2;

	last_rope = scr_create_rope(rope_length, player1_type, player2_type, global.player1_var, knot_is_baggage);

	link = physics_joint_revolute_create(last_rope, global.player2_var, global.player2_var.x, global.player2_var.y, -1, -1, false, 0, 0, false, false);
	physics_joint_set_value(link, phy_joint_damping_ratio, 0);
	physics_joint_set_value(link, phy_joint_frequency, 40);
	physics_joint_set_value(link, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
	physics_joint_set_value(link, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);

	with(global.player2_var){
		parent = other.last_rope;
	}
	with(last_rope){
		joint_with_next_rope = other.link;
	}
}