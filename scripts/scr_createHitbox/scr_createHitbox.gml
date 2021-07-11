// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createHitbox(x_position, y_position, creator, sprite, knockback, lifespan, damage, sound){
	
	var hitbox = instance_create_layer(x_position, y_position, "Player", obj_hitbox);
	if(place_meeting(hitbox.x,hitbox.y, obj_enemyParent)) {audio_play_sound(sound, 5, false); }
	hitbox.sprite_index = sprite;
	hitbox.creator = creator;
	hitbox.knockback = knockback;
	hitbox.alarm[0] = lifespan;
	hitbox.damage = damage;
	
}