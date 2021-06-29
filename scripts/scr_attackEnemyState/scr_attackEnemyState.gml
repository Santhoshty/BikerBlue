// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackEnemyState(){
	
	if (instance_exists(obj_playableChar)) {
		if (obj_playableChar.x >= x) {
			scr_setSprite(spr_gruntAttack, 3, 0);
			image_speed = 1;
			if(scr_animationEnd()) {
				instance_create_layer(x + 17, y - 13, "Enemies", obj_bullet);
				state = ENEMYSTATE.WANDER;
			}
		}
	
		if(obj_playableChar.x < x) {
			scr_setSprite(spr_gruntAttackBehind, 3, 0);
			image_speed = 1;
			if(scr_animationEnd()) {
				instance_create_layer(x - 10, y - 14, "Enemies", obj_bullet);
				state = ENEMYSTATE.WANDER;
			}
		}

	}
}