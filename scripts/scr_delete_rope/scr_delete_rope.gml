// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_delete_rope(){
	link = global.player1_var.joint_with_next_rope;
	physics_joint_delete(link);
	
	global.player1_var.joint_with_next_rope = -1;
	global.player2_var.parent = noone;
	
	for(i = 0; i < array_length(global.rope_array); i++){
		//delete joint
		link = global.rope_array[i].joint_with_next_rope;
		rope =  global.rope_array[i];
		
		 if(link != -1) physics_joint_delete(link);
		instance_destroy(rope);
	}
	global.rope_array = array_create(0);
}