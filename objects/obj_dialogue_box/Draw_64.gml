/// @description Insert description here
// You can write your code in this editor
// Draw Event of obj_dialogue_box

    // Draw the background rectangle
draw_set_color(c_black);
draw_roundrect(50, 50, 750, 100, true); // Adjust the dimensions as needed

    // Draw the dialogue text
draw_set_color(c_white);
draw_set_font(fnt_Dialogue); // Ensure you have your dialogue font set
draw_text(100, 70, "Don't Hit ME!!"); // Adjust the text and position
