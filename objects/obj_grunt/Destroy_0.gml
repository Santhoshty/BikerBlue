/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_enemySpawner)) {
	with(obj_enemySpawner) {
		if (triggered) {
			remaining[current_wave]--;	
		}
	}
	
}