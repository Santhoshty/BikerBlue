/// @description Insert description here
// You can write your code in this editor

draw_self();

if (flash > 0) {
	flash --;
	shader_set(shader_white);
	draw_self();
	shader_reset();	
}

//healthbar

draw_sprite(spr_playerHealthBarBorderUI, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_playerHealthPipUI, 0, healthbar_x, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);

//arrow ui



if (x < 30) {
draw_sprite(spr_arrowUI, 0, 45, y);
}

if (x > 365) {
	
	draw_sprite_ext(spr_arrowUI, 0, 350, y, -1, 1, 0, c_white, 1);
	
}

if (alarm[0] > 0) {
	comboCounterX = 290;
	comboCounterX = 290;
	comboCounterY = 55;
	var comboOpacity = 0;

	if (global.combo > 0 && global.combo <= 10) {;
		comboOpacity = alarm[0]/(15 * 60);
	}

	else if (global.combo > 10 && global.combo <= 50) {
		comboOpacity = alarm[0]/(10 * 60);
	}

	else if (global.combo > 51 && global.combo <= 100) {
		comboOpacity = alarm[0]/(7 * 60);
	}

	else if (global.combo > 100 && global.combo <= 999) {
		comboOpacity = alarm[0]/(5 * 60);
	}


	var hundredfloor = floor(global.combo/100);
	var tenfloor = floor((global.combo-100*hundredfloor)/10);
	var onefloor = (global.combo-100*hundredfloor-10*tenfloor);
	draw_sprite_ext(spr_comboTimesUI, 0, comboCounterX - 12, comboCounterY, 1, 1, 0, c_white, comboOpacity);
	draw_sprite_ext(spr_comboNumbersUI, hundredfloor, comboCounterX, comboCounterY, 1, 1, 0, c_white, comboOpacity);
	draw_sprite_ext(spr_comboNumbersUI, tenfloor, comboCounterX + 14, comboCounterY, 1, 1, 0, c_white, comboOpacity);
	draw_sprite_ext(spr_comboNumbersUI, onefloor, comboCounterX + 28, comboCounterY, 1, 1, 0, c_white, comboOpacity);
	draw_sprite_ext(spr_comboExclamationUI, 0, comboCounterX + 42, comboCounterY, 1, 1, 0, c_white, comboOpacity);
}

else {global.combo = 0;}