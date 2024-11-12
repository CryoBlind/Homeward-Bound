/// @description Insert description here
// You can write your code in this editor
// Step Event
if (place_meeting(x, y, obj_player1) && !dialogue_triggered) {
	var dialogue_parameters = {
		text : dialogue_text,
		otherOpt1 : opt1,
		otherOpt2 : opt2,
		otherOpt3 : opt3,
		otherOpt4 : opt4,
		forced : true,
		player_that_initiated : 1	
	};
	
    if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
	dialogue_triggered = true;
}

if (place_meeting(x, y, obj_player2) && !dialogue_triggered) {
	var dialogue_parameters = {
		text : dialogue_text,
		otherOpt1 : opt1,
		otherOpt2 : opt2,
		otherOpt3 : opt3,
		otherOpt4 : opt4,
		forced : true,
		player_that_initiated : 2	
	};
	
    if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
	dialogue_triggered = true;
}