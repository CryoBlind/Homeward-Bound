/// @description Insert description here
// You can write your code in this editor
if(frames_till_respawn == -1) {}
else if(frames_till_respawn > 0){
	frames_till_respawn--;
	return;
}
else{
	frames_till_respawn = -1;
	scr_respawn_players(global.current_player_spawner);
}


if(global.max_tolerable_rope_length > 0){
	global.current_rope_length = scr_get_rope_length()
	if(global.rope_strain < 100 && global.current_rope_length > global.max_tolerable_rope_length){
		global.rope_strain = clamp(global.rope_strain + .4 * global.attachment_effect_multiplier, 0, 100);
		global.rope_is_strained = true;
	}
	else if(global.rope_strain > 0){
		if(global.rope_strain > 102) global.rope_strain = clamp(global.rope_strain - .25, 0, 120);
		else global.rope_strain = clamp(global.rope_strain - (.1 + (.15 * global.attachment_effect_multiplier)), 0, 100);
		
		global.rope_is_strained = false;
	}
	else{
		global.rope_is_strained = false;
	}
}
if(global.rope_strain > 99) global.strain_failure_counter = clamp(global.strain_failure_counter + 1, 0, global.strain_failure_value + 1)
else global.strain_failure_counter = 0;

if(global.strain_failure_counter >= global.strain_failure_value){
	frames_till_respawn = 60;
	instance_destroy(global.knot);
	global.knot = noone;
	var previous_joint = global.rope_array[array_length(global.rope_array)/2].joint_with_next_rope;
	global.rope_array[array_length(global.rope_array)/2].joint_with_next_rope = -1;
	global.rope_array[array_length(global.rope_array)/2 + 1].parent = noone;
	physics_joint_delete(previous_joint);
}

if(!global.can_initiate_dialogue && !global.in_dialogue){
	if(global.dialogue_cooldown <= 0) global.can_initiate_dialogue = true;
	else global.dialogue_cooldown--;
}

if(global.bag_updated){
	var attach, last_rope;
	attach = global.knot.attach;
	last_rope = global.knot.parent;
	var oldKnot = global.knot;
	global.knot = instance_create_layer(oldKnot.x, oldKnot.y, layer_get_id("Knot"), obj_knot, {is_baggage : oldKnot.is_baggage});
	var attach_knot = physics_joint_revolute_create(last_rope, global.knot, physics_joint_get_value(attach, phy_joint_anchor_1_x), physics_joint_get_value(attach, phy_joint_anchor_1_y), -1, -1, false, 0, 0, false, false);
	physics_joint_set_value(attach_knot, phy_joint_damping_ratio, 0);
	physics_joint_set_value(attach_knot, phy_joint_frequency, 40);
	physics_joint_set_value(attach_knot, phy_joint_reaction_force_x, 2_000_000_000_000_000_000);
	physics_joint_set_value(attach_knot, phy_joint_reaction_force_y, 2_000_000_000_000_000_000);
	
	global.knot.parent = last_rope;
	global.knot.attach = attach_knot;
	
	instance_destroy(oldKnot);
	global.bag_updated = false;
}

if(global.attachment_effect_multiplier != 1){
	if(global.attachment_effect_multiplier < 1) global.attachment_effect_multiplier = clamp(global.attachment_effect_multiplier + .0001, 0, 1);
	else global.attachment_effect_multiplier = clamp(global.attachment_effect_multiplier - .0001, 1, 2);
}

if(global.last_dialogue_result != DIALOGUE_RESULT.NONE){
	if(global.last_dialogue_result == DIALOGUE_RESULT.GOOD){
		//do something good
		global.attachment_effect_multiplier = clamp(global.attachment_effect_multiplier - .3333, 0, 2)
		if(global.dialogue_feedback_obj != noone){
			global.dialogue_feedback_obj.frame_count = 120;
			global.dialogue_feedback_obj.current_result = 2;
		}
	}
	else{
		//do something bad
		global.attachment_effect_multiplier = clamp(global.attachment_effect_multiplier + .3333, 0, 2)
		if(global.dialogue_feedback_obj != noone){
			global.dialogue_feedback_obj.frame_count = 120;
			global.dialogue_feedback_obj.current_result = 1;
		}
	}
	global.last_dialogue_result = DIALOGUE_RESULT.NONE
}