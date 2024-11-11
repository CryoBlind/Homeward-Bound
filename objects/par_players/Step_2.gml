/// @description Insert description here
// You can write your code in this editor
is_moving = left || right || up || down;

if(is_moving){
	sprite_index = moving_sprite;
	if(left) image_xscale = abs(image_xscale) * -1;
	if(right) image_xscale = abs(image_xscale);
}
else sprite_index = stopped_sprite;