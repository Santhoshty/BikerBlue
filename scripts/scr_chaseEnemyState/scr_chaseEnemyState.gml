// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_chaseEnemyState(){
	
	scr_setSprite(spr_gruntIdle, 2, 0);
	
	//set new destination
	if (++wait >= waitDuration) {
		wait = 0;
		timePassed = 0;
		dir = point_direction(x,y,xstart,ystart) + irandom_range(-45, 45);
		xTo = x + lengthdir_x(enemyWanderDistance, dir);
		yTo = y + lengthdir_y (enemyWanderDistance, dir);
	}

	
	if (instance_exists(obj_playableChar)) {
		xTo = 40;
		yTo = obj_playableChar.y;
		
	}
	
	var _distanceToGo = point_distance(x,y, xTo, yTo);
	dir = point_direction(x, y, xTo, yTo);
	
	if (_distanceToGo > speedEnemy) {
		hSpd = lengthdir_x(speedEnemy, dir);
		vSpd = lengthdir_y(speedEnemy, dir);
	}
	
	else {
		hSpd = lengthdir_x(_distanceToGo, dir);
		vSpd = lengthdir_y(_distanceToGo, dir);
	}
	
	scr_collisionCheck();
	
}