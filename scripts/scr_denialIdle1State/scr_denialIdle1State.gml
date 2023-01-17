// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_denialIdle1State(){
	show_debug_message("Idle 1");
	scr_setSprite(spr_denialTruckBase, 3, 0);
	//at destination or given up?
	if ((x == xTo) && (y == yTo) || (timePassed > enemyChaseDistance / speedEnemy)) {
		hSpd = 0;
		vSpd = 0;
		
		//set new destination
		if (++getOnScreen >= getOnScreenDuration) {
			getOnScreen = 0;
			timePassed = 0;
			enemyChaseDistance = 65;
			dir = 0;
			show_debug_message(lengthdir_x(enemyChaseDistance, dir));
			//xTo = x - lengthdir_x(enemyChaseDistance, dir);
			//yTo = y + lengthdir_y (enemyChaseDistance, dir);
			
			xTo = 230;
			yTo = 85;
		}
		
		if (x < 360) {xHold = xTo; yHold = yTo; state = ENEMYSTATE.WANDER;}
		show_debug_message(x);
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