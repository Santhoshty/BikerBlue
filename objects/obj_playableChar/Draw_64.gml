/// @description Insert description here
// You can write your code in this editor
//healthbar

draw_sprite(spr_playerHealthBarBorderUI, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_playerHealthPipUI, 0, healthbar_x, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);
