player1_struct = {player_attachment_type : player1_type}
player2_struct = {player_attachment_type : player2_type}

global.player1_var = instance_create_layer(x, y - (rope_length * 12)/2, layer, obj_player1, player1_struct);
global.player2_var = instance_create_layer(x, y + (rope_length * 12)/2, layer, obj_player2, player2_struct);

last_rope = scr_create_rope(rope_length, player1_type, player2_type, global.player1_var);

link = physics_joint_revolute_create(last_rope, global.player2_var, global.player2_var.x, global.player2_var.y, -1, -1, false, 0, 0, false, false);
physics_joint_set_value(link, phy_joint_damping_ratio, 0);
physics_joint_set_value(link, phy_joint_frequency, 40);
physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

with(global.player2_var){
	parent = other.last_rope;
}
with(last_rope){
	joint_with_next_rope = other.link;
}