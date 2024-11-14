/// @description Insert description here
// You can write your code in this editor
//set up global variables
global.player1_var = -1;
global.player2_var = -1;
global.rope_array = array_create(0);
global.knot = -1;
global.bag_weight = 600_000;
global.bag_damping = 30;
global.bag_updated = false;
global.rope_strain = 0;
global.in_dialogue = false;
global.current_player1_dialogue_parameters = {
	text : "some random dialogue P1",
	otherOpt1: "1",
	otherOpt2: "2",
	otherOpt3: "3",
	otherOpt4: "4",
	forced : false,
	player_that_initiated : 1
};
global.current_player2_dialogue_parameters = {
	text : "some random dialogue P2",
	otherOpt1: "1",
	otherOpt2: "2",
	otherOpt3: "3",
	otherOpt4: "4",
	forced : false,
	player_that_initiated : 2
};
global.max_tolerable_rope_length = 0;
global.min_tolerable_distance = 0;
global.current_rope_length = 0;
global.rope_is_strained = false;
global.current_player_spawner = noone;
global.direct_player_joint = -1;
global.player1_interaction_dialogue_allowed = true;
global.player2_interaction_dialogue_allowed = true;
global.can_initiate_dialogue = true;
global.strain_failure_counter = 0;
global.strain_failure_value = 30;
enum ATTACHMENT_STYLE {
	SECURE = 0,
	ANXIOUS = 1,
	AVOIDANT = 2,
	DISORGANIZED = 3
};

//Initialize Viewports
view_enabled = true;
view_visible[0] = true;

zoomF = 1;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 3840;
view_hport[0] = 2160;

view_camera[0] = camera_create_view(0,0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

var dwidth = display_get_width();
var dheight = display_get_height();

var xpos = (dwidth/2)-3840;
var ypos = (dheight/2)-2160;
window_set_rectangle(xpos,ypos,3840,2160);
surface_resize(application_surface, 3840,2160);

//Creates our HUD, needed for the draw events for our GUI
layer_sequence_create("Instances", 0, 0, seq_game_hud);