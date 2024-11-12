/// @description Insert description here
// You can write your code in this editor
if(global.max_tolerable_rope_length > 0){
	global.current_rope_length = scr_get_rope_length()
	if(global.rope_strain < 100 && global.current_rope_length > global.max_tolerable_rope_length){
		global.rope_strain = clamp(global.rope_strain + .4, 0, 100);
		global.rope_is_strained = true;
	}
	else if(global.rope_strain > 0){
		if(global.rope_strain > 102) global.rope_strain = clamp(global.rope_strain - .25, 0, 120);
		else global.rope_strain = clamp(global.rope_strain - .25, 0, 100);
		
		global.rope_is_strained = false;
	}
	else{
		global.rope_is_strained = false;
	}
}
show_debug_message(string(global.strain_failure_counter));
if(global.rope_strain > 99) global.strain_failure_counter = clamp(global.strain_failure_counter + 1, 0, global.strain_failure_value + 1)
else global.strain_failure_counter = 0;

if(global.strain_failure_counter >= global.strain_failure_value) scr_respawn_players(global.current_player_spawner);

if(!global.can_initiate_dialogue && !global.in_dialogue){
	if(global.dialogue_cooldown <= 0) global.can_initiate_dialogue = true;
	else global.dialogue_cooldown--;
}