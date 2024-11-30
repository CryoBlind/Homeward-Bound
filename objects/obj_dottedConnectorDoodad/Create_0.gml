/// @description Insert description here
// You can write your code in this editor
function apply_rotation_x(rotate_x, rotate_y){
	toReturn = x + cos(-degtorad(image_angle)) * (rotate_x-x) - sin(-degtorad(image_angle)) * (rotate_y-y);
	return toReturn;
}
function apply_rotation_y(rotate_x, rotate_y){
	toReturn = y + sin(-degtorad(image_angle)) * (rotate_x-x) + cos(-degtorad(image_angle)) * (rotate_y-y)
	return toReturn;
}