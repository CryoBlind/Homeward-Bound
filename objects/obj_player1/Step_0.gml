/// @description Insert description here
// You can write your code in this editor

//Register Input
scr_input1();

//Move the player
scr_move_collide();
//physics_apply_local_force(0, 0, 100, 0);
if place_meeting(x, y,obj_player2) {
	if (!instance_exists(obj_dialogue_box)) {
    var dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box);  // Uses the "Instances" layer
    dialogue.visible = true;
}

show_debug_message("Collision detected between Player1 and Player2!");
}
