// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_input1(){
	//Movement
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))
	
	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	
	space_pressed = keyboard_check_pressed(vk_space);
	
	//Utility
	escape_pressed = keyboard_check_pressed(vk_escape);
	
	
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}