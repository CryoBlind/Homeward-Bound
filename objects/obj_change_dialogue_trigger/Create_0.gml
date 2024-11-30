/// @description Insert description here
// You can write your code in this editor
// Initialize the showing_message variable
// Create Event
showing_message = false; // Default is not showing the message
player_nearby = false; // Track if the player is currently nearby
dialogue_triggered = false; // Track if the dialogue has already been triggered

dialogue_parameters = 
{
	otherOpt1 : opt1,
	otherOpt2 : opt2,
	otherOpt3 : opt3,
	otherOpt4 : opt4,
	text : dialogue_text,
	forced : false,
	player_that_initiated : player_to_change,
	goodOpts : good_opts,
	badOpts : bad_opts
};