// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function newgame(){
	show_debug_message("newgame");
	layer_sequence_create("Instances", 0, 0, seq_sceneTransition);
	layer_sequence_play(seq_sceneTransition);
	room_goto(Room1);
	instance_destroy(obj_Menu);
}