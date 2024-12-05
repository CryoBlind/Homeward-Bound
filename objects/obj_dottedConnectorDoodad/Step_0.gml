if(parent != noone) isActivated = parent.isActivated;
else{
	if(numButtonsPressed > 0) isActivated = true;
	else isActivated = false;
}
