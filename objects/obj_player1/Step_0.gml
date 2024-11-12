/// @description Insert description here
// You can write your code in this editor

scr_input1();

//Move the player
if(!global.in_dialogue) scr_move_collide();

//Indicate dialogue possible
if place_meeting(x, y, par_players) && global.interaction_dialogue_allowed{
	draw_sprite(spr_dialogueIndicator,-1,x,y+50);
}

//initiate dialogue
if place_meeting(x, y, par_players) && space_pressed && global.interaction_dialogue_allowed {
	if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, global.current_dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
}