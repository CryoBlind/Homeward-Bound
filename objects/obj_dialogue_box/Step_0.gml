/// @description Insert description here
// You can write your code in this editor

// Close the dialogue box when Enter is pressed
// Step Event of obj_dialogue_box
if (keyboard_check_pressed(vk_space)) {
    // Destroy the dialogue box when Space is pressed
	global.in_dialogue = false;
	if(!forced) global.interaction_dialogue_allowed = false;
    instance_destroy();
}