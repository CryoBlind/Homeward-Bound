/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_right)) {
	x += 3;
	sprite_index = sprCircleRun;
	image_xscale = 1;
}
else if (keyboard_check(vk_left)) {
	x -= 3;
	sprite_index = sprCircleRun;
	image_xscale = -1;
}
else {
	sprite_index = sprCircleIdle;
}




//Register Input


scr_input1();

//Move the player
if(!global.in_dialogue) scr_move_collide();

//initiate dialogue
if place_meeting(x, y, par_players) && space_pressed {
	if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, global.current_dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
}