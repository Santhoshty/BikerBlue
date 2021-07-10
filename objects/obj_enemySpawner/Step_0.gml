/// @description Insert description here
// You can write your code in this editor
show_debug_message(triggered);
if(triggered) {

	//check list for enemies ready to spawn
	for (var i = 0; i < ds_list_size(waves); i++) {
		var next = ds_list_find_value(waves, i);
			if (next[_WAVE] == current_wave && next[_DELAY] == timer) {
				
				var spawnpoint = next[_SPAWN];
				instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Enemies", next[_TYPE]);
			}
	}
	
	timer++;
	
	if(remaining[current_wave] <= 0) {
		if (current_wave == total_waves) {
			instance_destroy();
		}
		
		else {
			current_wave++;
			timer = 0;
		}
	}
}