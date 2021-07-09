// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackTwoPlayerState(){	
	
	scr_setSprite(spr_playerAttackTwo, 2, 0);
	
	if(scr_animationHitFrame(2)) {
		scr_createHitbox(x, y, self, spr_playerAttackTwoHitbox, 2, 4, 5);	
	}
	
	if(keyboard_check_pressed(global.attackKey) && scr_animationHitFrameRange(3,5)) {
		state = PLAYERSTATE.ATTACK_THREE;
	}
	
	if(scr_animationEnd()) {state = PLAYERSTATE.FREE;}
	
	if (keyboard_check_pressed(global.dashKey)) {state = PLAYERSTATE.DASH;}
}