/// @description Insert description here
// You can write your code in this editor

	if (trajectory >= initialPosition) {
		x += 4;
	}
	
	if(trajectory < initialPosition) {		
		x -= 4;
	}
	
	if (scr_animationEnd()) {
		image_speed = 0;
		image_index = 1;
	}