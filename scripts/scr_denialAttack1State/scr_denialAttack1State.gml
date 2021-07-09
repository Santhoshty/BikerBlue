// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_denialAttack1State(){
	show_debug_message("Attack");
	if (instance_exists(obj_playableChar) && instance_exists(heavyGun)) {
		if(heavyGun.image_angle == 0) {
			}
		//heavyGun.image_angle = heavyGun.image_angle + 5;
		heavyGun.image_angle -= 10;
		instance_create_layer(heavyGun.x, heavyGun.y, "Gun", obj_bullet);
		state = ENEMYSTATE.WANDER;
	}
}