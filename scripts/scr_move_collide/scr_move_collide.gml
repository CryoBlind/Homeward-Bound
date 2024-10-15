// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_collide(){
	//Set x direction
	x_dir =  right - left;
	y_dir = down - up;

	//See if we're colliding with a wall
	if place_meeting(x+spd*x_dir,y+spd*y_dir,par_wall){
		while !place_meeting(x+x_dir,y+y_dir,par_wall){
			x+=x_dir
			y+=y_dir
		}
		x_dir = 0
		y_dir = 0
	}

	//Apply Movement
	phy_speed_x += spd*x_dir;
	phy_speed_y += spd*y_dir;

}