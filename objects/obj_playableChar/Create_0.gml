/// @description Insert description here
// You can write your code in this editor
event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));

image_speed = 2;

hSpd = 0;
vSpd = 0;
speedWalk = 4;
len= 0;
inputDirection = point_direction(0, 0, global.rightKey - global.leftKey, global.downKey - global.upKey);

audio_play_sound(snd_motorcycleEngine1,1, true);

//alarm
dashTime = 0;
dashDuration = room_speed/8;

global.combo = 0;

hp = 100;
hp_max = hp;
healthbar_width = 50;
healthbar_height = 3;
healthbar_x = (100/2) - (healthbar_width/2); 
healthbar_y = ystart - 130;

flash = 3;

state = PLAYERSTATE.FREE;

enum PLAYERSTATE {
	FREE,
	KNOCKBACK,
	ATTACK_ONE,
	ATTACK_TWO,
	ATTACK_THREE,
	ATTACK_FOUR,
	DASH
	
}