/// @description Insert description here
// You can write your code in this editor
switch (push_dir) {
	case "right": physics_apply_local_force(0, 0, -3000000, 0); break;
	case "left": physics_apply_local_force(0, 0, 3000000, 0); break;
	case "up": physics_apply_local_force(0, 0, 0, 3000000); break;
	case "down": physics_apply_local_force(0, 0, 0, -3000000); break;
	default: break;
}