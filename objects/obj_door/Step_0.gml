//set Enabled state
if(numButtonsPressed >= numButtonsRequired){
	isEnabled = !startState;
}
else{
	isEnabled = startState;
}


//apply Enabled State
if(isEnabled) {
	sprite_index = startSprite;
	phy_active = true;
}
else {
	sprite_index = -1;
	phy_active = false;
}