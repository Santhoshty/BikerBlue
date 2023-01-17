// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_denialAttack1State(){
	show_debug_message("Attack");
	if (instance_exists(obj_playableChar) && instance_exists(heavyGun)) {
		
		
		state = ENEMYSTATE.WANDER;
	}
}