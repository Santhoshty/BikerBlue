/// @description Insert description here
// You can write your code in this editor

if (!global.gamePaused) {
	switch(state) {

		case PLAYERSTATE.FREE: scr_freePlayerState(); break;
		case PLAYERSTATE.ATTACK_ONE: scr_attackOnePlayerState(); break;
		case PLAYERSTATE.ATTACK_TWO: scr_attackTwoPlayerState(); break;
		case PLAYERSTATE.ATTACK_THREE: scr_attackThreePlayerState(); break;
		case PLAYERSTATE.ATTACK_FOUR: scr_attackFourPlayerState(); break;
		case PLAYERSTATE.DASH: scr_dashPlayerState(); break;
	
	
	}
}
