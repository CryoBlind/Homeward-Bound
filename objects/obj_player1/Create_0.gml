/// @description Insert description here
// You can write your code in this editor
left = 0;
right = 0;
spd = 25;

up = 0;
down = 0;

//For force-based movement
x_spd = 0;
y_spd = 0;
accel = 100_000;
max_spd = 50;
drag = 20_000;

phy_fixed_rotation = true;


//scr_create_rope(60, 0, 2);
///one rope joint test
//host = self;
//next_player = instance_create_layer(x, y+200, layer_get_id("Interactables"), obj_player2);
//link = physics_joint_rope_create(host, next_player, x, y, next_player.x, next_player.y, 200,false);

//offset_y = 1;
//host = self
//next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment)
//attach = physics_joint_revolute_create(self, next_rope, x, y, -1, -1, false, 0, 0, false, false);
//physics_joint_set_value(attach, phy_joint_damping_ratio, 0);
//physics_joint_set_value(attach, phy_joint_frequency, 40);
//physics_joint_set_value(attach, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
//physics_joint_set_value(attach, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

//with(next_rope){
//	parent = other.id;
//}

//repeat(40){
//	offset_y+=12
//	last_rope = next_rope;
//	next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);
	
//	link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
//	//link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 0, false);
//	physics_joint_set_value(link, phy_joint_damping_ratio, 1);
//	physics_joint_set_value(link, phy_joint_frequency, 40);
//	physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
//	physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

	
//	with(next_rope){
//		parent = other.last_rope;
//	}
//}

//offset_y+=12;
//last_rope = next_rope;
//next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Interactive"), obj_player2);

//link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
//physics_joint_set_value(link, phy_joint_damping_ratio, 0);
//physics_joint_set_value(link, phy_joint_frequency, 40);
//physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
//physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

//with(next_rope){
//	parent = other.last_rope;
//}
	
//rope creation
//offset_y = 0;
//host = self;
//next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);

////attach = physics_joint_revolute_create(self, next_rope, x, y, -1, -1, false, 0, 0, false, false);
////physics_joint_set_value(attach, phy_joint_damping_ratio, 1);
////physics_joint_set_value(attach, phy_joint_frequency, 10);
////physics_joint_set_value(attach, phy_joint_reaction_force_x, 1_000_000_000);
////physics_joint_set_value(attach, phy_joint_reaction_force_y, 1_000_000_000);

//attach2 = physics_joint_revolute_create(next_rope, self, 0, 0, x, y, false, 0, 0, false, false);
//physics_joint_set_value(attach2, phy_joint_damping_ratio, 1);
//physics_joint_set_value(attach2, phy_joint_frequency, 10);
//physics_joint_set_value(attach2, phy_joint_reaction_force_x, 1_000_000_000);
//physics_joint_set_value(attach2, phy_joint_reaction_force_y, 1_000_000_000);
////attach = physics_joint_distance_create(self, next_rope, x, y, next_rope.x, next_rope.y, false);
////physics_joint_set_value(attach, phy_joint_damping_ratio, 1);
////physics_joint_set_value(attach, phy_joint_frequency, 10);

//with(next_rope){
//	parent = other.id;
//}

////repeat(40){
////	offset_y+=25
////	last_rope = next_rope;
////	next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);
	
////	//link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, 25,false);
////	link2 = physics_joint_rope_create(next_rope, last_rope, next_rope.x, next_rope.y, last_rope.x, last_rope.y, 25,false);
////	//physics_joint_set_value(link, phy_joint_damping_ratio, 1);
////	//physics_joint_set_value(link, phy_joint_frequency, 10);
////	//physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000);
////	//physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000);
	
////	physics_joint_set_value(link2, phy_joint_damping_ratio, 1);
////	physics_joint_set_value(link2, phy_joint_frequency, 10);
////	physics_joint_set_value(link2, phy_joint_reaction_force_x, 1_000_000_000);
////	physics_joint_set_value(link2, phy_joint_reaction_force_y, 1_000_000_000);
	
////	with(next_rope){
////		parent = other.last_rope;
////	}
////}

////offset_y+=25
//last_rope = next_rope;
//next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Interactive"), obj_player2);
	
////link = physics_joint_revolute_create(next_rope, last_rope, x, y, 0, 0, false, 0, 0, false, false);
//link = physics_joint_rope_create(next_rope, last_rope, next_rope.x, next_rope.y, last_rope.x, last_rope.y, 0,false);
//physics_joint_set_value(link, phy_joint_damping_ratio, .1);
//physics_joint_set_value(link, phy_joint_frequency, 10);
//physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000);
//physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000);

////link2 = physics_joint_revolute_create(last_rope, next_rope, x, y, -1, -1, false, 0, 0, false, false);
////link2 = physics_joint_rope_create(next_rope, last_rope, next_rope.x, next_rope.y, last_rope.x, last_rope.y, 0,false);
////physics_joint_set_value(link2, phy_joint_damping_ratio, .1);
////physics_joint_set_value(link2, phy_joint_frequency, 10);
////physics_joint_set_value(link2, phy_joint_reaction_force_x, 1_000_000_000);
////physics_joint_set_value(link2, phy_joint_reaction_force_y, 1_000_000_000);
