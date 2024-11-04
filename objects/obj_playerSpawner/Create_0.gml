player1_var = instance_create_layer(x, y - (rope_length * 12)/2, layer, obj_player1);

last_rope = scr_create_rope(rope_length, 0, 0, player1_var);

player2_var = instance_create_layer(x, y+(rope_length * 12)/2, layer_get_id("Interactive"), obj_player2);

link = physics_joint_revolute_create(last_rope, player2_var, player2_var.x, player2_var.y, -1, -1, false, 0, 0, false, false);
physics_joint_set_value(link, phy_joint_damping_ratio, 0);
physics_joint_set_value(link, phy_joint_frequency, 40);
physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000_000_000);
physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000_000_000);

with(player2_var){
	parent = other.last_rope;
}