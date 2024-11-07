/// @description Insert description here
// You can write your code in this editor
//set Enabled state
if(box.boxHasMoved){
	if(numButtonsPressed >= numButtonsRequired){
		with(box){
			phy_active = false;
			phy_position_x = parent.x;
			phy_position_y = parent.y;
			moved = false;
			boxHasMoved = false;
			phy_active = true;
		}
	}
}