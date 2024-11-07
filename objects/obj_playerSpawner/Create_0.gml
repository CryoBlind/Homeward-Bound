player1_struct = {player_attachment_type : player1_type}
player2_struct = {player_attachment_type : player2_type}

global.player1_var = instance_create_layer(x, y - (rope_length * 12)/2, layer, obj_player1, player1_struct);
global.player2_var = instance_create_layer(x, y + (rope_length * 12)/2, layer, obj_player2, player2_struct);
global.current_player_spawner = self;

scr_spawn_players(self, rope_length, player1_type, player2_type);