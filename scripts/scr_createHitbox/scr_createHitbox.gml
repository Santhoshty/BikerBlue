// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_createHitbox(x_position, y_position, creator, sprite, knockback, lifespan, damage){
	
	var hitbox = instance_create_layer(x_position, y_position, "Player", obj_hitbox);
	hitbox.sprite_index = sprite;
	hitbox.creator = creator;
	hitbox.knockback = knockback;
	hitbox.alarm[0] = lifespan;
	hitbox.damage = damage;
	
}