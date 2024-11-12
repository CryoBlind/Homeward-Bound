// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dialogue_input(){
	//Movement
	p1_up = keyboard_check(ord("W"))
	p1_down = keyboard_check(ord("S"))
	
	p2_up = keyboard_check(vk_up)
	p2_down = keyboard_check(vk_down)
	
	space_pressed = keyboard_check_pressed(vk_space);
	control_pressed = keyboard_check_pressed(vk_control);
}