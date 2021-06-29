// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_idleEnemyState(){
	scr_setSprite(spr_gruntIdle,3 ,0);
	//at destination or given up?
	if ((x == xTo) && (y == yTo) || (timePassed > enemyChaseDistance / speedEnemy)) {
		hSpd = 0;
		vSpd = 0;
		
		//set new destination
		if (++getOnScreen >= getOnScreenDuration) {
			getOnScreen = 0;
			timePassed = 0;
			enemyChaseDistance = irandom_range(100, 300);
			dir = irandom_range(-10, 10);
			xTo = x + lengthdir_x(enemyChaseDistance, dir);
			yTo = y + lengthdir_y (enemyChaseDistance, dir);
		}
		
		if (x > 100) {xChaseStart = xTo; yChaseStart = yTo; state = ENEMYSTATE.WANDER;}
	}

	//move towards new deestination
	
	else {
		timePassed ++;
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = speedEnemy;
		if (_distanceToGo < speedEnemy) _speedThisFrame = _distanceToGo;
		dir = point_direction(x,y,xTo,yTo);
		hSpd = lengthdir_x(_speedThisFrame, dir);
		vSpd = lengthdir_y(_speedThisFrame, dir);
		
		//collide and move
		scr_collisionCheck();
	}
	

}