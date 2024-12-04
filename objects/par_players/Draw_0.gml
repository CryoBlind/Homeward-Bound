/// @description Insert description here
// You can write your code in this editor
draw_self();

var _x_power;
var _y_power;
if(object_index == obj_player1.object_index){ // player 1 case
	_x_power = global.player1_var.x - global.player2_var.x
	_y_power = global.player1_var.y - global.player2_var.y
	var _dist_from_other_player = sqrt(power(_x_power, 2) + power(_y_power, 2));
	
	if(global.player1_interaction_dialogue_allowed && _dist_from_other_player < 300){
		draw_sprite_stretched(spr_dialogueIndicator, 1, x + 80, y - 180, 128, 128);
	}
}
else { //player 2 case
	_x_power = global.player2_var.x - global.player1_var.x
	_y_power = global.player2_var.y - global.player1_var.y
	var _dist_from_other_player = sqrt(power(_x_power, 2) + power(_y_power, 2));
	if(global.player2_interaction_dialogue_allowed && _dist_from_other_player < 300){
		draw_sprite_stretched(spr_dialogueIndicator, 1, x + 80, y - 180, 128, 128);
	}
}