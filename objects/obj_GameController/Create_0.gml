/// @description Insert description here
// You can write your code in this editor
//set up global variables
global.player1_var = -1;
global.player2_var = -1;
global.rope_array = array_create(0);
global.knot = -1;
global.rope_strain = 0;



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