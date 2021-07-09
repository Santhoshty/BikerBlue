// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_denialWanderState(){
	show_debug_message("Wander");
	scr_setSprite(spr_denialTruckBase,3 ,0);
	//at destination or given up?
	if ((x == xTo) && (y == yTo) || (timePassed > enemyWanderDistance / speedEnemy)) {
		hSpd = 0;
		vSpd = 0;
		
		//set new destination
		if (++wait >= waitDuration) {
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45, 45);
			xTo = x;
			yTo = y + lengthdir_y (40, dir);
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
		aggroCheck = 0;
		if (instance_exists(obj_playableChar)) {
			state = ENEMYSTATE.ATTACK1;	
		}
	}
}