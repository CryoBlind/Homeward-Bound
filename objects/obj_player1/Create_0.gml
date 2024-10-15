/// @description Insert description here
// You can write your code in this editor
left = 0;
right = 0;
spd = 25;

up = 0;
down = 0;

//For force-based movement
x_spd = 0;
accel = 1;
max_spd = 10;
drag = 1;

//rope creation
offset_y = 1;
host = self;
next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);

attach = physics_joint_distance_create(self, next_rope, x, y, next_rope.x, next_rope.y, false);
physics_joint_set_value(attach, phy_joint_damping_ratio, 1);
physics_joint_set_value(attach, phy_joint_frequency, 10);

with(next_rope){
	parent = other.id;
}

repeat(20){
	offset_y+=50
	last_rope = next_rope;
	next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Rope"), obj_rope_segment);
	
	link = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
	physics_joint_set_value(link, phy_joint_damping_ratio, 1);
	physics_joint_set_value(link, phy_joint_frequency, 10);
	
	with(next_rope){
		parent = other.last_rope;
	}
}

offset_y+=25
last_rope = next_rope;
next_rope = instance_create_layer(x, y+offset_y, layer_get_id("Interactive"), obj_player2);
	
link = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
physics_joint_set_value(link, phy_joint_damping_ratio, 1);
physics_joint_set_value(link, phy_joint_frequency, 10);