/// @description Insert description here
// You can write your code in this editor

//Register inputs
scr_input2();

//Move the player
scr_move_collide();
physics_apply_local_force(0, 0, -100, 0);