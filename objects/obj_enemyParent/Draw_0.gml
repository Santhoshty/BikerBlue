/// @description Insert description here
// You can write your code in this editor

draw_self();

//healthbar
if alarm[2] > 0 {
	var height = sprite_height;
	draw_rectangle_color(x - 12, y - height, x - 12 + (hp/max_hp) * 24, y - (height - 2), c_white, c_white, c_white, c_white, false );
	draw_sprite(spr_enemyHealthbarUI, 0, x - 12, y - height);
}

//too far left or right draw an arrow

if (x < 30) {
draw_sprite(spr_arrowUI, 1, 45, y);
}

if (x > 365) {
	
	draw_sprite_ext(spr_arrowUI, 1, 350, y, -1, 1, 0, c_white, 1);
	
}



