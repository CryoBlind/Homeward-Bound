/// @description Insert description here
// You can write your code in this editor
if(activator != noone){
	if(activator.isActivated){
		isEnabled = !startState;
		//show_message("door opened");
	}
	else {
		isEnabled = startState;
	}
}

if(isEnabled) {
	sprite_index = startSprite;
	phy_active = true;
}
else {
	sprite_index = -1;
	phy_active = false;
	//physics_fixture_bind(fix_door_disabled, self);
}