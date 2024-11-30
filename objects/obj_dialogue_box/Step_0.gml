/// @description Insert description here
// You can write your code in this editor

// Close the dialogue box when Enter is pressed
// Step Event of obj_dialogue_box
scr_dialogue_input();

if(p1_up && player_that_initiated == 2 || p2_up && player_that_initiated == 1){
	if(should_move){
		selected_option = clamp(selected_option - 1, 0, array_length(options) - 1)
	}
	should_move = false;
}
else if(!p1_down && !p2_down) should_move = true;

if(p1_down && player_that_initiated == 2 || p2_down && player_that_initiated == 1){
	if(should_move){
		selected_option = clamp(selected_option + 1, 0, array_length(options) - 1)
		if(options[selected_option] == "") selected_option--;
	}
	should_move = false;
}
else if(!p1_up && !p2_up) should_move = true;

if (player_that_initiated == 2 && space_pressed || player_that_initiated == 1 && control_pressed) {
    // Destroy the dialogue box when Space is pressed
	global.in_dialogue = false;
	global.can_initiate_dialogue = false;
	global.dialogue_cooldown = 10;
	global.bag_weight = clamp(global.bag_weight - global.amount_to_reduce_weight, 5, 1_000_000);
	global.bag_damping = clamp(global.bag_damping - 10, 5, 1_000_000);
	global.bag_updated = true;
	if(!forced){
		if(player_that_initiated == 1) global.player1_interaction_dialogue_allowed = false;
		else global.player2_interaction_dialogue_allowed = false;
	}
	
	//return value
	if(array_contains(goodOpts, selected_option + 1)) global.last_dialogue_result = DIALOGUE_RESULT.GOOD;
	else if(array_contains(badOpts, selected_option + 1)) global.last_dialogue_result = DIALOGUE_RESULT.BAD;
	else global.last_dialogue_result = DIALOGUE_RESULT.NONE;
	
    instance_destroy();
}