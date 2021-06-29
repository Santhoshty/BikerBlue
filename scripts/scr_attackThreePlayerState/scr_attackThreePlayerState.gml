// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackThreePlayerState(){
	
	scr_setSprite(spr_playerAttackThree, 1.4, 0);
	
	if(scr_animationHitFrame(4)) {
		scr_createHitbox(x, y, self, spr_playerAttackThreeHitBox, 1, 4, 5);	
	}
	
	if(scr_animationEnd()) {state = PLAYERSTATE.ATTACK_FOUR;}
	
	if (dashKey) {state = PLAYERSTATE.DASH;}
	

}