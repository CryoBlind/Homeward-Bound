/// @description Insert description here
// You can write your code in this editor

//utility functions
function get_player_sprites(){
	if(object_index == obj_player1.object_index){
		switch current_type {
			case ATTACHMENT_STYLE.SECURE:	
				stopped_sprite = spr_player1_secure_stopped;
				moving_sprite = spr_player1_secure_running;
				break;
			case ATTACHMENT_STYLE.ANXIOUS:	
				stopped_sprite = spr_player1_anxious_stopped;
				moving_sprite = spr_player1_anxious_running;
				break;
			case ATTACHMENT_STYLE.AVOIDANT:	
				stopped_sprite = spr_player1_avoidant_stopped;
				moving_sprite = spr_player1_avoidant_running;
				break;
			case ATTACHMENT_STYLE.DISORGANIZED:	
				//TO-DO: pick style randomly, then re-run function
				break;
			default:
				break;
		}
	}
	else{ // player 2 case
		switch current_type {
			case ATTACHMENT_STYLE.SECURE:	
				stopped_sprite = spr_player2_secure_stopped;
				moving_sprite = spr_player2_secure_running;
				break;
			case ATTACHMENT_STYLE.ANXIOUS:	
				stopped_sprite = spr_player2_anxious_stopped;
				moving_sprite = spr_player2_anxious_running;
				break;
			case ATTACHMENT_STYLE.AVOIDANT:	
				stopped_sprite = spr_player2_avoidant_stopped;
				moving_sprite = spr_player2_avoidant_running;
				break;
			case ATTACHMENT_STYLE.DISORGANIZED:	
				//TO-DO: pick style randomly, then re-run function
				break;
			default:
				break;
		}
	}
}

left = 0;
right = 0;
spd = 25;

up = 0;
down = 0;
space_pressed = false;
is_moving = false;

stopped_sprite = -1;
moving_sprite = -1;
current_type = player_attachment_type;

dialogue_ready = false;

stepsCount = 0;

//For force-based movement
x_spd = 0;
y_spd = 0;
accel = 200_000;
max_spd = 50;
drag = 20_000;

phy_fixed_rotation = true;

joint_with_next_rope = -1;
get_player_sprites();

