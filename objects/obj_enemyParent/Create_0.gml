/// @description Insert description here
// You can write your code in this editor
event_inherited();

//movement
hSpd = 0;
vSpd = 0;
xTo = xstart;
yTo = ystart;
timePassed = 0;
waitDuration = 60;
wait = 0;
getOnScreenDuration = 10;
getOnScreen = 0;
enemyWanderDistance = 50;
speedEnemy = 1;

//
xChaseStart = irandom_range(70, 300);
yChaseStart = irandom_range(120, 170);

//aggro
aggroCheck = 0;
aggroCheckDuration = room_speed * 2;
enemyAggroRadius = 300;


//state
state = ENEMYSTATE.IDLE;

//enemy functions
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.KNOCKBACK] = -1;
enemyScript[ENEMYSTATE.DEAD] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;
