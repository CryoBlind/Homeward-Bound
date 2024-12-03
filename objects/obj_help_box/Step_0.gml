/// @description Insert description here
// You can write your code in this editor

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

//Depending on what the player wants, do an action

if(space_pressed || control_pressed){
	if(options[selected_option] == "Resume"){
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
		instance_destroy();
	}
	else if(options[selected_option] == "Level Select")
		room_goto(Room_lvlSelect)
	else if(options[selected_option] == "Exit Game")
		game_end();
}