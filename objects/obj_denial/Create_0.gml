/// @description Insert description here
// You can write your code in this editor

event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));

speedEnemy = 1;

scr_setSprite(spr_denialTruckBase, 3, 0);

enemyScript[ENEMYSTATE.IDLE1]		= scr_denialIdle1State;
enemyScript[ENEMYSTATE.WANDER]		= scr_denialWanderState;
enemyScript[ENEMYSTATE.ATTACK1]		= scr_denialAttack1State;
enemyScript[ENEMYSTATE.KNOCKBACK]	= scr_denialKnockbackState;
enemyScript[ENEMYSTATE.DEAD]		= scr_deathEnemyState;

xHold = 260;
yHold = 90;

hp = 300;
hp_max = hp;
healthbar_width = 50;
healthbar_height = 3;
healthbar_x =(healthbar_width/2) + (180/2); 
healthbar_y = ystart - 140;

//dependencies
heavyGun = obj_heavyGun;

//heavy gun
heavygunxBuffer = 30;
heavygunyBuffer = 24;
instance_create_layer(x + heavygunxBuffer, y + heavygunyBuffer, "Gun", heavyGun);