/// @description Insert description here
// You can write your code in this editor
if(box != noone){
	if(box.boxHasMoved){
		if(numButtonsPressed >= numButtonsRequired){
			with(box){
				phy_active = false;
				phy_position_x = parent.x;
				phy_position_y = parent.y;
				boxHasMoved = false;
				phy_active = true;
			}
		}
	}
}