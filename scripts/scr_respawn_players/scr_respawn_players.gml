// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_respawn_players(spawner){
	global.rope_strain = 0;
	instance_destroy(global.knot);
	global.knot = noone;
	scr_delete_rope();
	scr_spawn_players(spawner, spawner.rope_length, spawner.player1_type, spawner.player2_type, spawner.knot_is_baggage);
}