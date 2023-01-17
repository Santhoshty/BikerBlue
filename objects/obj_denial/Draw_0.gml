/// @description Insert description here
// You can write your code in this editor
draw_self();

//arrow ui
if (x < 30) {draw_sprite(spr_arrowUI, 1, 45, y);}
if (x > 365) {draw_sprite_ext(spr_arrowUI, 1, 350, y, -1, 1, 0, c_white, 1);}

//person

//if(state == ENEMYSTATE.WANDER) {
	draw_sprite(spr_edIdle, image_index, x + 24, y - 32);
//	}

//draw_sprite(spr_playerHealthBarBorderUI, 0, 200, 42 );
//draw_sprite_stretched(spr_playerHealthPipUI, 0, 260, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);