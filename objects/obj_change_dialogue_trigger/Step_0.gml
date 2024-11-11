/// @description Insert description here
// You can write your code in this editor
// Step Event
if (place_meeting(x, y, par_players) && !dialogue_triggered) {
	scr_update_interaction_dialogue(dialogue_parameters);
	dialogue_triggered = true;
}