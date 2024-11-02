// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr__create_rope(numSegments, ropeTypePlayer1, ropeTypePlayer2){
ropeType = ropeTypePlayer1;
offset_y = 1;
host = self
next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment)
attach = physics_joint_revolute_create(self, next_rope, x, y, -1, -1, false, 0, 0, false, false);
physics_joint_set_value(attach, phy_joint_damping_ratio, 0);
physics_joint_set_value(attach, phy_joint_frequency, 40);
physics_joint_set_value(attach, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
physics_joint_set_value(attach, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

with(next_rope){
	parent = other.id;
}

for(i = 0; i < numSegments; i++){
	if(i < numSegments/2) ropeType = ropeTypePlayer1;
	else ropeType = ropeTypePlayer2;
	
	offset_y+=12
	last_rope = next_rope;
	
	if(abs(numSegments/2 - i) < 1) { //create knot
		knot = instance_create_layer(x, y+offset_y, layer_get_id("Knot"), obj_knot)
		attatch_knot = physics_joint_revolute_create(last_rope, knot, x, y + offset_y, -1, -1, false, 0, 0, false, false);
		physics_joint_set_value(attatch_knot, phy_joint_damping_ratio, 0);
		physics_joint_set_value(attatch_knot, phy_joint_frequency, 40);
		physics_joint_set_value(attatch_knot, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
		physics_joint_set_value(attatch_knot, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);
		last_rope = knot;
	}
	
	next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);
	
	if(ropeType == 0){ //secure case
		link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
		physics_joint_set_value(link, phy_joint_damping_ratio, 1);
		physics_joint_set_value(link, phy_joint_frequency, 40);
	}
	else if(ropeType == 1){ //anxious case
		link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 1, false);
	}
	else if(ropeType == 2){ //avoidant case.  weakens when close?
		link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 30, false);
	}
	else{ //disorganized case
		link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y + offset_y, next_rope.x, next_rope.y, 0, false);
	}
	
	
	
	physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
	physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

	
	with(next_rope){
		parent = other.last_rope;
	}
}

offset_y+=12;
last_rope = next_rope;
next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Interactive"), obj_player2);

link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
physics_joint_set_value(link, phy_joint_damping_ratio, 0);
physics_joint_set_value(link, phy_joint_frequency, 40);
physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);

with(next_rope){
	parent = other.last_rope;
}
}