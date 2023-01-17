// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function endless(){
	show_debug_message("endless");
	room_goto(Room1Endless);
	instance_destroy(obj_Menu);
}