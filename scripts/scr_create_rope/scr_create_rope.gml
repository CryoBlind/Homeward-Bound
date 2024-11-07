// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_rope(numSegments, ropeTypePlayer1, ropeTypePlayer2, player1){
	global.rope_array = array_create(numSegments, noone);
	global.max_tolerable_rope_length = numSegments * 12
	
	ropeType = ropeTypePlayer1;
	offset_y = 0;
	host = player1
	next_rope = instance_create_layer(host.x, host.y+offset_y, layer_get_id("Rope"), obj_rope_segment)
	global.rope_array[0] = next_rope.id;
	attach = physics_joint_revolute_create(host, next_rope, host.x, host.y, -1, -1, false, 0, 0, false, false);
	physics_joint_set_value(attach, phy_joint_damping_ratio, 0);
	physics_joint_set_value(attach, phy_joint_frequency, 40);
	physics_joint_set_value(attach, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
	physics_joint_set_value(attach, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);
	
	with(next_rope){
		parent = other.id;
	}
	with(host){
		joint_with_next_rope = other.attach;
	}

	underHalfWay = true;
	for(i = 1; i < numSegments; i++){
		if(i < numSegments/2) ropeType = ropeTypePlayer1;
		else ropeType = ropeTypePlayer2;
	
		offset_y+=12
		last_rope = next_rope;
	
		if(abs(numSegments/2 - i) < 1) { //create knot
			knot = instance_create_layer(host.x, host.y+offset_y, layer_get_id("Knot"), obj_knot)
			attach_knot = physics_joint_revolute_create(last_rope, knot, host.x, host.y + offset_y, -1, -1, false, 0, 0, false, false);
			physics_joint_set_value(attach_knot, phy_joint_damping_ratio, 0);
			physics_joint_set_value(attach_knot, phy_joint_frequency, 40);
			physics_joint_set_value(attach_knot, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
			physics_joint_set_value(attach_knot, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);
			//last_rope = knot;
			global.knot = knot;
			underHalfWay = false;
			//lastConnectionWasKnot = true;
		}
	
		next_rope = instance_create_layer(host.x, host.y+offset_y, layer_get_id("Rope"), obj_rope_segment);
		global.rope_array[i] = next_rope.id;
		
		if(ropeType == 0){ //secure case
			link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
			physics_joint_set_value(link, phy_joint_damping_ratio, 1);
			physics_joint_set_value(link, phy_joint_frequency, 40);
		}
		else if(ropeType == 1){ //anxious case
			link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 1, false);
		}
		else if(ropeType == 2){ //avoidant case.  weakens when close?
			link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 5, false, 0, 0, false, false);
			physics_joint_set_value(link, phy_joint_damping_ratio, 30);
			physics_joint_set_value(link, phy_joint_frequency, 40);
		}
		else{ //disorganized case
			link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y + offset_y, next_rope.x, next_rope.y, 0, false);
		}
	
		physics_joint_set_value(link, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
		physics_joint_set_value(link, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);

	
		with(next_rope){
			parent = other.last_rope;
		}
		
		with(last_rope){
			joint_with_next_rope = other.link;
			if(other.underHalfWay) owner = global.player1_var;
			else owner = global.player2_var;
		}
	}
	
	last_rope = next_rope;
	return last_rope;
}