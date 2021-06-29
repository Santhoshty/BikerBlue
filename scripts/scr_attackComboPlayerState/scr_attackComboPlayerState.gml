// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackComboPlayerState(){
	
	sprite_index = spr_playerAttackOne;
	image_speed = 1;
	
	if(scr_animationEnd()) {
		state = PLAYERSTATE.FREE;
	}

}