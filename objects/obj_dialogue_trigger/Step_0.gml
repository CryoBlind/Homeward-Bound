/// @description Insert description here
// You can write your code in this editor
// Step Event
if (instance_exists(obj_player1)) {
    // Check if the player is touching the dialogue trigger
    var player_touching = place_meeting(x, y, obj_player1);
    
    if (player_touching) { 
        player_nearby = true; // Update state to indicate the player is nearby
    } else {
        player_nearby = false; // Update state to indicate the player is not nearby
    }

    // Check for Space key press to create dialogue box if player is nearby
    if (player_nearby && keyboard_check_pressed(vk_space) && !dialogue_triggered) {
        // Show the interaction message
        showing_message = true; // Show the message
        
        // Create the dialogue box
        if (!instance_exists(obj_dialogue_box)) {
            instance_create_layer(x, y - 32, "GUI", obj_dialogue_box); // Adjust position as needed
        }

        // Set the flag to true to indicate that the dialogue has been triggered
        dialogue_triggered = true;
    }
}