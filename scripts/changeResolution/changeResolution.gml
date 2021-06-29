// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changeResolution(){

	switch(argument0) {
		case 0: window_set_size(320, 180); break;
		case 1: window_set_size(640, 260);	break;	
		case 2: window_set_size(1280, 720); break;
		case 3: window_set_size(1920, 1090); break;		
		case 4: window_set_size(2560, 1440); break;
		case 5: window_set_size(3840, 2160); break;		
	}
}