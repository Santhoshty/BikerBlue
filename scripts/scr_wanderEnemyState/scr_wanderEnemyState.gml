// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_wanderEnemyState(){
	scr_setSprite(spr_gruntIdle,3 ,0);
	//at destination or given up?
	if ((x == xTo) && (y == yTo) || (timePassed > enemyWanderDistance / speedEnemy)) {
		hSpd = 0;
		vSpd = 0;
		
		//set new destination
		if (++wait >= waitDuration) {
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xChaseStart,yChaseStart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y (enemyWanderDistance, dir);
		}
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
	
	if (++aggroCheck >= aggroCheckDuration) {
		aggroCheck = irandom_range(0,60);
		if (instance_exists(obj_playableChar)) && (point_distance(x, y, obj_playableChar.x, obj_playableChar.y) <= enemyAggroRadius) {
			state = ENEMYSTATE.ATTACK1;	
		}
	}
	
}