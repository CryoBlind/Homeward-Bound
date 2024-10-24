/// @description Insert description here
// You can write your code in this editor

// Check if the dialogue box exists, create it if not
// Check if the dialogue box exists, create it if not
if (!instance_exists(obj_dialogue_box)) {
    var dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box);  // Uses the "Instances" layer
    dialogue.visible = true;
}

show_debug_message("Collision detected between Player1 and Player2!");

// If this message appears in the output window, collision is being detected