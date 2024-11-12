// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_update_interaction_dialogue(new_dialogue, player_to_change){
	switch player_to_change{
		case 1:
			global.current_player1_dialogue_parameters = new_dialogue;
			global.player1_interaction_dialogue_allowed = true;
		case 2:
			global.current_player2_dialogue_parameters = new_dialogue;
			global.player2_interaction_dialogue_allowed = true;
	}
	
}