// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_collide(){
	//Set x direction
	x_dir =  right - left;
	y_dir = down - up;
	
	
	viewX = camera_get_view_x(view_camera[0]);
	viewY = camera_get_view_y(view_camera[0]);
	viewW = camera_get_view_width(view_camera[0]);
	viewH = camera_get_view_height(view_camera[0]);
	
	camX = x + (x_dir*200) - (viewW*0.5);
	camY = y + (y_dir*150) - (viewH*0.5);
	
	newX = lerp(viewX, camX, 0.1);
	newY = lerp(viewY, camY, 0.1);
	
	zoomF = 1;
	factor = 0.2;
  
	//player1Pos = instance_place(x,y,obj_player1);
	//player2Pos = instance_place(x,y,obj_player2);
	//playerDistance = abs(player1Pos-player2Pos);
	

	zoomDir = 0;
	/*if(playerDistance >= 3840){
		zoomDir = -1;
	}
	else if(playerDistance < 3840){
		zoomDir = 1;
	}*/
	
	zoomF = clamp(zoomF + (zoomDir*factor), factor, 2);
	
	//3840/2160;  1920/1080
	
	lerpH = lerp(viewH, zoomF*2160, factor);
	newH = clamp(lerpH, 0, room_height);
	newW = newH * (3840/2160);
	camera_set_view_size(view_camera[0], newW, newH);
	
	offsetX = newX - (newW - viewW)*0.5;
	offsetY = newY - (newH - viewH)*0.5;
	newX = clamp(offsetX, 0, room_width - newW);
	newY = clamp(offsetY, 0, room_height - newH);
	camera_set_view_pos(view_camera[0], newX, newY);

	//Apply Movement
	//phy_speed_x += spd*x_dir;
	//phy_speed_y += spd*y_dir;
	
	
	if(x_dir < max_spd) physics_apply_local_force(0, 0, accel*x_dir, 0);
	if(y_dir < max_spd) physics_apply_local_force(0, 0, 0, accel*y_dir);
	
	if(object_index == obj_player1.object_index){ // player 1 case
		var _x_power = global.player1_var.x - global.player2_var.x
		var _y_power = global.player1_var.y - global.player2_var.y
		var _dist_from_other_player = sqrt(power(_x_power, 2) + power(_y_power, 2));
		var _max_push = 200_000;
	
		if(current_type == ATTACHMENT_STYLE.AVOIDANT && _dist_from_other_player <= global.min_tolerable_distance){
			physics_apply_local_force(0, 0, clamp((300/(_x_power)) * _max_push, -_max_push, _max_push), clamp((300/(_y_power)) * _max_push, -_max_push, _max_push));
		}
	}
	else { //player 2 case
		var _x_power = global.player2_var.x - global.player1_var.x
		var _y_power = global.player2_var.y - global.player1_var.y
		var _dist_from_other_player = sqrt(power(_x_power, 2) + power(_y_power, 2));
		var _max_push = 200_000;
	
		if(current_type == ATTACHMENT_STYLE.AVOIDANT && _dist_from_other_player <= global.min_tolerable_distance){
			physics_apply_local_force(0, 0, clamp((300/(_x_power)) * _max_push, -_max_push, _max_push), clamp((300/(_y_power)) * _max_push, -_max_push, _max_push));
		}
	}
}