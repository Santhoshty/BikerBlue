// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setSprite(sprite, speed, index){
	if(sprite_index != sprite) {
		sprite_index = sprite;
		image_speed = speed;
		image_index = index;
	}
}