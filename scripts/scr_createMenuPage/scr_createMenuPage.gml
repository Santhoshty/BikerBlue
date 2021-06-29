// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createMenuPage(){
// Creating the grid
	var ds_grid_id = ds_grid_create(5, argument_count);
	
	// Assigning elements from array to the grid.
	var i = 0; 
	repeat(argument_count) {
		var array = argument[i];
		var array_len = array_length_1d(array);
	
		var xx = 0;
		repeat(array_len) {
			ds_grid_id[# xx, i] = array[xx];
			xx++;
		}
		
		i++;
	}
	return ds_grid_id;
}