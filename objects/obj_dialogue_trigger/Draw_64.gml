/// @description Insert description here
// You can write your code in this editor
// Draw GUI Event
// Draw GUI Event of obj_dialogue_trigger
if (player_nearby) { // Only show message if the player is nearby
    var player_x = obj_player1.x; // Get player x position
    var player_y = obj_player1.y; // Get player y position
    
    draw_set_color(c_white); // Set text color
    draw_set_font(fnt_Dialogue); // Set the font to your dialogue font
    draw_text(player_x - 50, player_y - 100, "Press Spacebar to Interact"); // Adjust position as needed
}