// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyHit(damage){
	
	hp -= damage;
	if (hp > 0) {
		state = ENEMYSTATE.KNOCKBACK;
		//hitNow = true;
	}
	
	else {
		state = ENEMYSTATE.DEAD;	
	}
}