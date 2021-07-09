// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_denialKnockbackState(){
	scr_setSprite(spr_denialTruckBase, 0, 0);
	scr_moveCollide(knockback_speed, 0);
	knockback_speed = lerp(knockback_speed, 0, 0.10);
	//reset attack alarm when hit
	alarm[0] = room_speed * 5;
	//maybe use this
	//knockback_speed = scr_applyFriction(knockback_speed, 0, 0.6);
	if (knockback_speed < 1) {
		knockback_speed = 0;
		state = ENEMYSTATE.WANDER;
	}
}