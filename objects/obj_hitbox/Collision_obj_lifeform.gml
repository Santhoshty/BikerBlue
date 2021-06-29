/// @description Insert description here
// You can write your code in this editor
if(creator == noone || creator == other || ds_list_find_index(hitObjects, other) != -1) { exit;}

other.hp -= damage;

global.combo += 1;
ds_list_add(hitObjects, other);
//Knockback
other.state = ENEMYSTATE.KNOCKBACK;
other.knockback_speed = knockback;

//Enemy Healthbar
if (other.hp > 0) {
	other.alarm[2] = 120;	
}


if (global.combo > 0 && global.combo <= 10) {
	obj_playableChar.alarm[0] = 15 * 60;
}

else if (global.combo > 10 && global.combo <= 50) {
	obj_playableChar.alarm[0] = 10 * 60;
}

else if (global.combo > 51 && global.combo <= 100) {
	obj_playableChar.alarm[0] = 7 * 60;
}

else if (global.combo > 100 && global.combo <= 999) {
	obj_playableChar.alarm[0] = 5 * 60;
}





