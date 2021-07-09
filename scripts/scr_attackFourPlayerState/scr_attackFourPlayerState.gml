// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackFourPlayerState(){
	
	scr_setSprite(spr_playerAttackFour, 1.3, 0);
	
	if(scr_animationHitFrame(2)) {
		scr_createHitbox(x, y, self, spr_playerAttackFourHitbox, 4, 4, 6);	
	}
	
	if(scr_animationEnd()) {state = PLAYERSTATE.FREE;}

	if (keyboard_check_pressed(global.dashKey)) {state = PLAYERSTATE.DASH;}
}