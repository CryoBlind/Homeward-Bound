/// @description Insert description here
// You can write your code in this editor
if(!boxHasMoved){
	if(phy_position_x != start_X || phy_position_y != start_y){
		boxHasMoved = true;
	}
}

if x > prev_x push_dir = "right";
else if x < prev_x push_dir = "left";
else if y > prev_y push_dir = "down";
else if y < prev_y push_dir = "up";
prev_x = x;
prev_y = y;
