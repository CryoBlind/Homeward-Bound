/// @description Insert description here
// You can write your code in this editor
if(player_to_change == 1){
	if(type_to_change_to == global.player1_attachment_type){
		draw_rectangle(x, y, x + width, y + height, true);
	}
}
else{
	if(type_to_change_to == global.player2_attachment_type){
		draw_rectangle(x, y, x + width, y + height, true);
	}
}