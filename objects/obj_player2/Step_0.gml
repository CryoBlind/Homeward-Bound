/// @description Insert description here
// You can write your code in this editor

//Register inputs
scr_input2();

//Move the player
if(!global.in_dialogue) scr_move_collide();

//Indicate dialogue possible
if place_meeting(x, y, par_players) && global.player2_interaction_dialogue_allowed{
	draw_sprite(spr_dialogueIndicator,-1,x,y+50);
}

//initiate dialogue
var _dist = sqrt(power(global.player1_var.x - global.player2_var.x, 2) + power(global.player1_var.y - global.player2_var.y, 2));
if _dist < 300 && space_pressed && global.player2_interaction_dialogue_allowed && global.can_initiate_dialogue {
	if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, global.current_player2_dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
}