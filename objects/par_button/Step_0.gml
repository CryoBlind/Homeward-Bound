/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y,par_players) {
	if(isToggleable && !touchedPlayerLastStep) isActivated = !isActivated;
	if(!isToggleable) isActivated = true;
	touchedPlayerLastStep = true;
}
else {
	isActivated = false;
	touchedPlayerLastStep = false;
}