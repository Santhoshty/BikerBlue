/// @description Insert description here
// You can write your code in this editor



draw_sprite(spr_enemyHealthbarUI, 0, 260, healthbar_y);
draw_sprite_stretched(spr_playerHealthPipUI, 0, 260, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);
