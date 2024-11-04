/// @description Insert description here
// You can write your code in this editor
function create_roller(roller_x, roller_y) {
	roller = instance_create_layer(roller_x, roller_y, layer_get_id("Walls"), obj_roller);
	attach = physics_joint_revolute_create(self, roller, roller_x, roller_y, -1, -1, false, 0, 0, false, false);
	physics_joint_set_value(attach, phy_joint_damping_ratio, 10);
	physics_joint_set_value(attach, phy_joint_frequency, 30);
	physics_joint_set_value(attach, phy_joint_reaction_force_x, 1_000_000_000_000_000);
	physics_joint_set_value(attach, phy_joint_reaction_force_y, 1_000_000_000_000_000);

	with(roller){
		parent = other;
	}
}


create_roller(x, y);
create_roller(x + image_xscale * 256, y);
create_roller(x, y + image_yscale * 256);
create_roller(x + image_xscale * 256, y + image_yscale * 256);


