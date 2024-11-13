/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,par_players) && !reachedGoal){
	//show_message("YOU WON!") Win Sequence!
	reachedGoal = true;
}

if(reachedGoal){
	room_goto(WinRoom);
}