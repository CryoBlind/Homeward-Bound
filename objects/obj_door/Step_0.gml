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
	mask_index = startMask;
	sprite_index = startSprite;
}
else {
	mask_index = empty_sprite;
	sprite_index = -1;
	//physics_fixture_set_collision_group(fix_door, -1);
}