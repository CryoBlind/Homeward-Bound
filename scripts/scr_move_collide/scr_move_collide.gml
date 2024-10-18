// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_collide(){
	//Set x direction
	x_dir =  right - left;
	y_dir = down - up;

	//See if we're colliding with a wall
	//if place_meeting(x+spd*x_dir,y+spd*y_dir,par_wall){
	//	while !place_meeting(x+x_dir,y+y_dir,par_wall){
	//		x+=x_dir
	//		y+=y_dir
	//	}
	//	x_dir = 0
	//	y_dir = 0
	//}
	
	//viewX = camera_get_view_x(view_camera[0]);
	//viewY = camera_get_view_y(view_camera[0]);
	//viewW = camera_get_view_width(view_camera[0]);
	//viewH = camera_get_view_height(view_camera[0]);
	
	//camX = x + (x_dir*200) - (viewW*0.5);
	//camY = y + (y_dir*150) - (viewH*0.5);
	
	//newX = lerp(viewX, camX, 0.1);
	//newY = lerp(viewY, camY, 0.1);
	
	//zoomF = 1;
	//factor = 0.2;
	//player1Pos = instance_place(x,y,obj_player1);
	//player2Pos = instance_place(x,y,obj_player2);
	//playerDistance = abs(player1Pos-player2Pos);
	
	//zoomDir = 0;
	//if(playerDistance >= 480){
	//	zoomDir = -1;
	//}
	//else if(playerDistance < 480){
	//	zoomDir = 1;
	//}
	
	//zoomF = clamp(zoomF + (zoomDir*factor), factor, 2);
	
	//lerpH = lerp(viewH, zoomF*270, factor);
	//newH = clamp(lerpH, 0, room_height);
	//newW = newH * (480/270);
	//camera_set_view_size(view_camera[0], newW, newH);
	
	//offsetX = newX - (newW - viewW)*0.5;
	//offsetY = newY - (newH - viewH)*0.5;
	//newX = clamp(offsetX, 0, room_width - newW);
	//newY = clamp(offsetY, 0, room_height - newH);
	//camera_set_view_pos(view_camera[0], newX, newY);

	//Apply Movement
	//phy_speed_x += spd*x_dir;
	//phy_speed_y += spd*y_dir;
	physics_apply_local_force(0, 0, 1000*x_dir, 1000*y_dir);

}