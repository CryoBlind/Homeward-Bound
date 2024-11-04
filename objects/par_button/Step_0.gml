/// @description Insert description here
// You can write your code in this editor
//if place_meeting(x, y,par_players) {
//	if(isToggleable && !touchedPlayerLastStep) isActivated = !isActivated;
//	if(!isToggleable) isActivated = true;
//	touchedPlayerLastStep = true;
//}
//else {
//	isActivated = false;
//	touchedPlayerLastStep = false;
//}

if place_meeting(x, y,par_players) {
	if(isToggleable && !touchedPlayerLastStep){ //toggleable case
		isActivated = !isActivated;
		
		if(isActivated) amountToUpdateObject = 1
		else amountToUpdateObject = -1;
		shouldUpdateButton = true;
	}
	if(!isToggleable){ //not toggleable case
		isActivated = true;
		if(!touchedPlayerLastStep){
			amountToUpdateObject = 1
			shouldUpdateButton = true;
		}
	}
	touchedPlayerLastStep = true;
}
else {
	if(touchedPlayerLastStep && !isToggleable){
		amountToUpdateObject = -1
		shouldUpdateButton = true;
		isActivated = false;
	}
	touchedPlayerLastStep = false;
}

if(amountToUpdateObject != 0 && shouldUpdateButton){
	connectedObject.numButtonsPressed += amountToUpdateObject;
	shouldUpdateButton = false;
}