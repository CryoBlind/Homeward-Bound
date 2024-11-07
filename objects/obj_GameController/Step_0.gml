/// @description Insert description here
// You can write your code in this editor
if(global.max_tolerable_rope_length > 0){
	length = scr_get_rope_length()
	if(global.rope_strain < 100 && length > global.max_tolerable_rope_length) global.rope_strain += .25;
	else if(global.rope_strain > 0) global.rope_strain -= .125;
}
