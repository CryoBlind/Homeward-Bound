// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_rope_types(new_type_player1, new_type_player2){
	/**
				CURRENTLY BROKEN/NOT IMPLEMENTED
	**/
	global.player1_var.player_atachment_type = new_type_player1;
	global.player2_var.player_atachment_type = new_type_player2;
	
	for(i = 1; i < array_length(global.rope_array) - 1; i++){
		//update joint
		if(global.rope_array[i].owner == global.player1_var){
			oldLink = global.rope_array[i].parent.joint_with_next_rope;
			last_rope =  global.rope_array[i].parent;
			next_rope = global.rope_array[i]
			
			if(new_type_player1 == 0){ //secure case
				link = physics_joint_revolute_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), -1, -1, false, 0, 0, false, false);
				physics_joint_set_value(link, phy_joint_damping_ratio, 1);
				physics_joint_set_value(link, phy_joint_frequency, 40);
			}
			else if(new_type_player1 == 1){ //anxious case
				link = physics_joint_weld_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), 0, 40, 1, false);
			}
			else if(new_type_player1 == 2){ //avoidant case.  weakens when close?
				link = physics_joint_weld_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), 0, 40, 30, false);
			}
			else{ //disorganized case
				link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y + offset_y, next_rope.x, next_rope.y, 0, false);
			}
	
			physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
			physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);
			
			physics_joint_delete(oldLink);
			
			with(last_rope){
				joint_with_next_rope = other.link;
			}
		}
		else if(global.rope_array[i].owner == global.player2_var){
			oldLink = global.rope_array[i].parent.joint_with_next_rope;
			last_rope =  global.rope_array[i].parent;
			next_rope = global.rope_array[i]
			
			if(new_type_player2 == 0){ //secure case
				link = physics_joint_revolute_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), -1, -1, false, 0, 0, false, false);
				physics_joint_set_value(link, phy_joint_damping_ratio, 1);
				physics_joint_set_value(link, phy_joint_frequency, 40);
			}
			else if(new_type_player2 == 1){ //anxious case
				link = physics_joint_weld_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), 0, 40, 1, false);
			}
			else if(new_type_player2 == 2){ //avoidant case.  weakens when too close?
				link = physics_joint_weld_create(last_rope, next_rope, physics_joint_get_value(oldLink, phy_joint_anchor_1_x), physics_joint_get_value(oldLink, phy_joint_anchor_1_y), 0, 40, 30, false);
			}
			else{ //disorganized case
				link = physics_joint_rope_create(last_rope, next_rope, last_rope.x, last_rope.y + offset_y, next_rope.x, next_rope.y, 0, false);
			}
	
			physics_joint_set_value(link, phy_joint_reaction_force_x, 1_000_000_000_000_000_000);
			physics_joint_set_value(link, phy_joint_reaction_force_y, 1_000_000_000_000_000_000);
			
			physics_joint_delete(oldLink);
			
			with(last_rope){
				joint_with_next_rope = other.link;
			}
		}
		
	}
}