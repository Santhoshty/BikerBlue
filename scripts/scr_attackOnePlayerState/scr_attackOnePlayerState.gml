// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackOnePlayerState(){

	scr_setSprite(spr_playerAttackOne, 2, 0);
	
	if(scr_animationHitFrame(6)) {
		scr_createHitbox(x, y, self, spr_playerAttackOneHitbox, 2, 4, 3);	
	}
	
	if(keyboard_check_pressed(global.attackKey) && scr_animationHitFrameRange(5,8)) {
		state = PLAYERSTATE.ATTACK_TWO;
	}
	
	if(scr_animationEnd()) {state = PLAYERSTATE.FREE;}
	
	if (keyboard_check_pressed(global.dashKey)) {state = PLAYERSTATE.DASH;}
}