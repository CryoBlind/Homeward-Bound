/// @description Insert description here
// You can write your code in this editor
// Step Event
if (place_meeting(x, y, par_players) && !dialogue_triggered) {
    if (!instance_exists(obj_dialogue_box)) {
		dialogue = instance_create_layer(0, 0, "Instances", obj_dialogue_box, dialogue_parameters);  // Uses the "Instances" layer
		dialogue.visible = true;
	}
	dialogue_triggered = true;
}