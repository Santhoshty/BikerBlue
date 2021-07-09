/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused && !instance_exists(obj_textbox)) {
	if (enemyScript[state] != -1) script_execute(enemyScript[state]);
}