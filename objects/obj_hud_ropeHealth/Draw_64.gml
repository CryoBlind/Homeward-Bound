/// @description Insert description here
// You can write your code in this editor

if(global.rope_strain >= 90){
	draw_sprite_ext(spr_ropeHealthCritical, 1, x, y, 2.0, 1-(global.rope_strain/100)+0.1, 0, c_red, 255);
}
else if(global.rope_strain > 0){
	draw_sprite_ext(spr_ropeHealthStrain, 1, x, y, 1+(global.rope_strain/100), 1-(global.rope_strain/100)+0.1, 0, c_gray, 255);
}
else
	draw_self();