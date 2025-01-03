/// @description Insert description here
// You can write your code in this editor
//set up global variables
global.dialogue_feedback_obj = noone;
global.player1_var = -1;
global.player2_var = -1;
global.rope_array = array_create(0);
global.knot = -1;
global.bag_weight = 2;
global.amount_to_reduce_weight = 0;
global.bag_damping = 20;
global.bag_updated = false;
global.rope_strain = 0;
global.in_dialogue = false;
global.num_keys = 0;
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
	text : "some random dialogue P2 that is very long to see how the text looks when it is too thicc",
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
global.player1_interaction_dialogue_allowed = false;
global.player2_interaction_dialogue_allowed = false;
global.can_initiate_dialogue = true;
global.strain_failure_counter = 0;
global.strain_failure_value = 30;
global.attachment_effect_multiplier = 1 // should be clamped and slowly return to 1
enum ATTACHMENT_STYLE {
	SECURE = 0,
	ANXIOUS = 1,
	AVOIDANT = 2,
	DISORGANIZED = 3
};
enum DIALOGUE_RESULT {
	NONE = 0,
	BAD = 1,
	GOOD = 2
}
global.last_dialogue_result = 0;

frames_till_respawn = -1;
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