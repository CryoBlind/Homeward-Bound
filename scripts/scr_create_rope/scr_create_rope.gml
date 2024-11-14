// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_rope(numSegments, ropeTypePlayer1, ropeTypePlayer2, player1, knot_is_baggage){
	rope_segment_size = 48;
	global.rope_array = array_create(numSegments, noone);
	global.max_tolerable_rope_length = numSegments * (rope_segment_size - 1);
	global.min_tolerable_distance = (numSegments * 2 * (rope_segment_size)/3);
	
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
		parent = other.host;
	}
	with(host){
		joint_with_next_rope = other.attach;
	}

	underHalfWay = true;
	for(i = 1; i < numSegments; i++){
		if(i < numSegments/2) ropeType = ropeTypePlayer1;
		else ropeType = ropeTypePlayer2;
	
		offset_y+=rope_segment_size
		last_rope = next_rope;
	
		if(abs(numSegments/2 - i) < 1) { //create knot
			var rope_struct = {
				is_baggage : knot_is_baggage
			};
			knot = instance_create_layer(host.x, host.y+offset_y, layer_get_id("Knot"), obj_knot, rope_struct);
			attach_knot = physics_joint_revolute_create(last_rope, knot, host.x, host.y + offset_y, -1, -1, false, 0, 0, false, false);
			physics_joint_set_value(attach_knot, phy_joint_damping_ratio, 0);
			physics_joint_set_value(attach_knot, phy_joint_frequency, 40);
			physics_joint_set_value(attach_knot, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
			physics_joint_set_value(attach_knot, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);
			//last_rope = knot;
			global.knot = knot;
			underHalfWay = false;
			//lastConnectionWasKnot = true;
			with(knot){
				parent = other.last_rope;
				attach = other.attach_knot;
			}
		}
	
		next_rope = instance_create_layer(host.x, host.y+offset_y, layer_get_id("Rope"), obj_rope_segment);
		global.rope_array[i] = next_rope.id;
		
		if(ropeType == ATTACHMENT_STYLE.SECURE){ //secure case
			link = physics_joint_revolute_create(last_rope, next_rope, next_rope.x, next_rope.y, -1, -1, false, 0, 0, false, false);
			physics_joint_set_value(link, phy_joint_damping_ratio, 1);
			physics_joint_set_value(link, phy_joint_frequency, 40);
		}
		else if(ropeType == ATTACHMENT_STYLE.ANXIOUS){ //anxious case
			link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 1, false);
		}
		else if(ropeType == ATTACHMENT_STYLE.AVOIDANT){ //avoidant case.  weakens when close?
			link = physics_joint_weld_create(last_rope, next_rope, next_rope.x, next_rope.y, 0, 40, 1, false);
		}
		else if(ropeType = ATTACHMENT_STYLE.DISORGANIZED){ //disorganized case
			link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y + offset_y, next_rope.x, next_rope.y, 0, false);
		}
		else{
			throw("unrecognized attachment style " + string(ropeType));
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