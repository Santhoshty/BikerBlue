/// @description Insert description here
// You can write your code in this editor
with (other) {
	if (state == PLAYERSTATE.DASH) {global.combo += 1; exit;}
	else {
		other.hp -= 20;
		flash = 3;
		global.combo = 0;	
	}

}
