/// @description Insert description here
// You can write your code in this editor
event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));

speedEnemy = 2;

scr_setSprite(spr_gruntIdle, 3, 0);

enginesnd = irandom_range(1,3);

//switch (enginesnd) {
//	case 1:	audio_play_sound(snd_motorcycleEngine2, 1, true); break;
//	case 2:	audio_play_sound(snd_motorcycleEngine3, 1, true); break;
//	case 3:	audio_play_sound(snd_motorcycleEngine4, 1, true); break;
//}

enemyScript[ENEMYSTATE.IDLE1] = scr_idleEnemyState;
enemyScript[ENEMYSTATE.WANDER] = scr_wanderEnemyState;
enemyScript[ENEMYSTATE.ATTACK1] = scr_attackEnemyState;
enemyScript[ENEMYSTATE.KNOCKBACK] = scr_knockbackEnemyState;
enemyScript[ENEMYSTATE.DEAD] = scr_deathEnemyState;


hp = 20;
max_hp = hp;
flash = 9;