/// @description Insert description here
// You can write your code in this editor
parent = noone;
attach = -1;
fixture = physics_fixture_create();

if(room == Room_Bag){
	is_baggage = true;
	sprite_index = spr_baggageKnot;
}

physics_fixture_set_box_shape(fixture, 1, 1);
physics_fixture_set_restitution(fixture, 1);
physics_fixture_set_collision_group(fixture, -1);
physics_fixture_set_friction(fixture, 0);
physics_fixture_set_awake(fixture, true);

if(is_baggage){
	physics_fixture_set_density(fixture, global.bag_weight);
	physics_fixture_set_linear_damping(fixture, global.bag_damping);
	physics_fixture_set_angular_damping(fixture, global.bag_damping/2);
}
else{
	physics_fixture_set_density(fixture, .3);
	physics_fixture_set_linear_damping(fixture, .3);
	physics_fixture_set_angular_damping(fixture, .3);
}

physics_fixture_bind(fixture, self);