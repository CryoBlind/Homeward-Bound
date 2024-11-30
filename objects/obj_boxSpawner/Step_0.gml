/// @description Insert description here
// You can write your code in this editor
if(box != noone){
	if(box.boxHasMoved){
		if(numButtonsPressed >= numButtonsRequired){
			with(box){
				phy_active = false;
				phy_position_x = parent.x - 128;
				phy_position_y = parent.y - 128;
				boxHasMoved = false;
				phy_active = true;
			}
		}
	}
}