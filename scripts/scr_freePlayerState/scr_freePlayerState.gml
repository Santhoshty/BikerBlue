// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_freePlayerState(){
	
	lastRecordedhp = hp;
	
	leftKey = keyboard_check(global.leftKey);
	rightKey = keyboard_check(global.rightKey);
	upKey = keyboard_check(global.upKey);
	downKey = keyboard_check(global.downKey);
	
	attackKey = keyboard_check_pressed(global.attackKey);
	dashKey = keyboard_check_pressed(global.dashKey);
	
	hInput = rightKey - leftKey;
	vInput = downKey - upKey;
	
	inputDirection = point_direction(0, 0, rightKey - leftKey, downKey - upKey);
	
	
	if(scr_playerPressKeys(rightKey, leftKey)) {
		hSpd = lerp(hSpd, speedWalk * hInput, 0.1);	
	}
	
	else {
		hSpd = lerp(hSpd, 0, 0.12);	
	}
	
	if (scr_playerPressKeys(downKey, upKey)) {
		vSpd = lerp(vSpd, (speedWalk/2) * vInput, 0.1);	
	}
	
	else {
		vSpd = lerp(vSpd, 0, 0.12);	
	}

	scr_collisionCheck();
	
	//if(place_meeting(x + hSpd, y, obj_denial)) {
	//	while(!place_meeting(x + sign(hSpd), y, obj_denial)) {
	//		x += sign(hSpd);
	//	}
	//	hSpd = 0;
	//}
	
	if((sign(hInput) < 0)) {
		sprite_index = spr_playerIdleReversed;
		image_speed = 2;
	}
	
	
	if(sign(hInput) > 0) {
		sprite_index = spr_playerIdle;
		image_speed = 2;
	}
	
	if(keyboard_check_pressed((global.attackKey))) {state = PLAYERSTATE.ATTACK_ONE;}
	if (keyboard_check_pressed(global.dashKey)) {state = PLAYERSTATE.DASH;}
	
}