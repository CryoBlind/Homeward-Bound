/// @description Insert description here
// You can write your code in this editor
if(numButtonsPressed >= numButtonsRequired){
	isEnabled = !startState;
}
else{
	isEnabled = startState;
}


//apply Enabled State
if(isEnabled) {
	sprite_index = startSprite;
}
else {
	sprite_index = -1;
}