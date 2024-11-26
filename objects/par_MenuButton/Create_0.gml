// text: The text that will be displayed on this button
text = "Button";
// text_color: The color of the text on this button
text_color = c_white;

//Initialize Viewports
view_enabled = true;
view_visible[0] = true;

zoomF = 1;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 1366;
view_hport[0] = 768;

view_camera[0] = camera_create_view(0,0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

var dwidth = display_get_width();
var dheight = display_get_height();

var xpos = (dwidth/2)-1366;
var ypos = (dheight/2)-768;
window_set_rectangle(xpos,ypos,1366,768);
surface_resize(application_surface, 1366,768);
