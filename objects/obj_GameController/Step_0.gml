/// @description Insert description here
// You can write your code in this editor
if(global.max_tolerable_rope_length > 0){
	global.current_rope_length = scr_get_rope_length()
	if(global.rope_strain < 100 && global.current_rope_length > global.max_tolerable_rope_length){
		global.rope_strain += .4;
		global.rope_is_strained = true;
	}
	else if(global.rope_strain > 0){
		global.rope_strain -= .25;
		global.rope_is_strained = false;
	}
	else{
		global.rope_is_strained = false;
	}
}
