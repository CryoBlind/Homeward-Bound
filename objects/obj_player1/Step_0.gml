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



// Variable to track if player is near the dialogue trigger
var near_dialogue = false;

// Check if the player is colliding with the dialogue trigger object
if (place_meeting(x, y, obj_dialogue_trigger)) {
    near_dialogue = true; // Player is near the dialogue trigger
    if (keyboard_check_pressed(vk_space)) { // Check if the Space key is pressed
        // Create the dialogue box if it doesn't exist
        if (!instance_exists(obj_dialogue_box)) {
            instance_create_layer(x, y - 32, "GUI", obj_dialogue_box); // Adjust position as needed
        }
    }
} else {
    near_dialogue = false; // Player is not near the dialogue trigger
}