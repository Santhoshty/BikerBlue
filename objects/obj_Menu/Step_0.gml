/// @description Insert description here
// You can write your code in this editor

input_up = keyboard_check_pressed(global.upKey);
input_down = keyboard_check_pressed(global.downKey);
input_left = keyboard_check_pressed(global.leftKey);
input_right = keyboard_check_pressed(global.rightKey);
input_enter = keyboard_check_pressed(vk_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if (inputting) {
	switch(ds_grid[# 1, menu_option[page]]) {
		case MENU_ELEMENT_TYPE.SHIFT:
			switch(menu_option[page]) {
				case 0: if (!audio_is_playing(snd_masterTest)) {audio_play_sound(snd_masterTest, 1, false);} break;
				case 1: if (!audio_is_playing(snd_soundTest)) {audio_play_sound(snd_soundTest, 1, false);} break;
				case 2: if (!audio_is_playing(snd_musicTest)) {audio_play_sound(snd_musicTest, 1, false);} break;
				
			}
		
			var hinput = input_right - input_left;
			if(hinput != 0) {
			//audio
			ds_grid[# 3, menu_option[page]] += hinput;
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]]) - 1);
			}
		break;
		case MENU_ELEMENT_TYPE.SLIDER:
			var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
			if(hinput != 0) {
			//audio
			ds_grid[# 3, menu_option[page]] += hinput * 0.1;
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
		break;
		case MENU_ELEMENT_TYPE.TOGGLE:
			var hinput = input_right - input_left;
			if(hinput != 0) {
			//audio
			ds_grid[# 3, menu_option[page]] += hinput;
			ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
		break;
		
		case MENU_ELEMENT_TYPE.INPUT:
		var kk = keyboard_lastkey;
		if(kk != vk_enter){
			//if(kk != ds_grid[# 3, menu_option[page]]) //audio
			ds_grid[# 3, menu_option[page]] = kk;
			variable_global_set(ds_grid[# 2, menu_option[page]], kk);
		}
		
		break;
		
	}
	
}

else {
	
	var ochange = input_down - input_up;

	if(ochange != 0) {
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height - 1) { menu_option[page] = 0; }
		if(menu_option[page] < 0) {menu_option[page] = ds_height - 1;}
	}

}

	if(input_enter) {
		switch(ds_grid[# 1, menu_option[page]]) {
				case MENU_ELEMENT_TYPE.SCRIPTRUNNER: script_execute(ds_grid[# 2, menu_option[page]])break;
				case MENU_ELEMENT_TYPE.PAGETRANSFER: page = ds_grid[# 2, menu_option[page]]; break;
				case MENU_ELEMENT_TYPE.SHIFT:
				case MENU_ELEMENT_TYPE.SLIDER:
				case MENU_ELEMENT_TYPE.TOGGLE: if(inputting){ script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]); }
				case MENU_ELEMENT_TYPE.INPUT:
					inputting = !inputting;
					break;
		}
	
		//audio
		audio_play_sound(snd_accept, 5, false);
	}
