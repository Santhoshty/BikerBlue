/// @description Insert description here
// You can write your code in this editor



event_inherited();

collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));

speedEnemy = 2;

scr_setSprite(spr_gruntIdle, 3, 0);

enemyScript[ENEMYSTATE.IDLE1] = scr_idleEnemyState;
enemyScript[ENEMYSTATE.WANDER] = scr_wanderEnemyState;
enemyScript[ENEMYSTATE.ATTACK1] = scr_attackEnemyState;
enemyScript[ENEMYSTATE.KNOCKBACK] = scr_denialKnockbackState;
enemyScript[ENEMYSTATE.DEAD] = scr_deathEnemyState;


hp = 20;
max_hp = hp;
flash = 9;