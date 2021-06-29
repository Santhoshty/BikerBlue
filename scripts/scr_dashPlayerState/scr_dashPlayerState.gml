// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dashPlayerState(){
	
	len = speedWalk * 1.5;
	
	hSpd = lengthdir_x(len, inputDirection);
	vSpd = lengthdir_y(len, inputDirection);
	
	scr_collisionCheck();
	
	if (++dashTime >= dashDuration) {
		dashTime = 0;
		state = PLAYERSTATE.FREE;
	}
	
	//create dash effect
	var dash = instance_create_layer(x, y, "Player", obj_dashEffect);
	dash.sprite_index = sprite_index;
	dash.image_index = image_index;
	
	hp = lastRecordedhp;
	
}