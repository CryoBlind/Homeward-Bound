// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_input2(){
	//Movement
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	
	space_pressed = keyboard_check_pressed(vk_control);
	//utility
	//if keyboard_check_pressed(vk_escape) game_end();
	
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}