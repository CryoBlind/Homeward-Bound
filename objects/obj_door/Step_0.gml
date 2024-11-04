/// @description Insert description here
// You can write your code in this editor
//if(activator1 != noone && activator2 != noone){ //double activator case
//	if(needsAllActivators){ //activator1 AND 2
//		if(activator1.isActivated && activator2.isActivated){
//			isEnabled = !startState;
//		}
//		else {
//			isEnabled = startState;
//		}
//	}
//	else{ //activator 1 OR 2
//		if(activator1.isActivated || activator2.isActivated){
//			isEnabled = !startState;
//		}
//		else {
//			isEnabled = startState;
//		}
//	}
//}
//else if(activator1 != noone && activator2 == noone){ // single activator case
//	if(activator1.isActivated){
//			isEnabled = !startState;
//		}
//		else {
//			isEnabled = startState;
//		}
//}

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