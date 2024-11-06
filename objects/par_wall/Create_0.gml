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

function apply_rotation_x(rotate_x, rotate_y){
	toReturn = x + cos(-degtorad(image_angle)) * (rotate_x-x) - sin(-degtorad(image_angle)) * (rotate_y-y);
	return toReturn;
}
function apply_rotation_y(rotate_x, rotate_y){
	toReturn = y + sin(-degtorad(image_angle)) * (rotate_x-x) + cos(-degtorad(image_angle)) * (rotate_y-y)
	return toReturn;
	
}

width = image_xscale * 256
height = image_yscale * 256
create_roller(apply_rotation_x(x, y), apply_rotation_y(x, y));
create_roller(apply_rotation_x(x + width, y), apply_rotation_y(x + width, y));
create_roller(apply_rotation_x(x, y + height), apply_rotation_y(x, y + height));
create_roller(apply_rotation_x(x + width, y + height), apply_rotation_y(x + width, y + height));


