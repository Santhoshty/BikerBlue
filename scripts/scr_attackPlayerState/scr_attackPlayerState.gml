// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attackPlayerState(){
	
	hSpd = 0;
	vSpd = 0;
	
	//Attack Start
	if(image_speed != 0) {
		sprite_index = spr_playerAttackOne;
		image_index = 0;
		image_speed = 9;
		ds_list_clear(hitByAttack);
	}

	//Use attack hitbox and check for hits
	mask_index = spr_playerAttackhB;
	var _hitAttackFrame = ds_list_create();
	var _hits = instance_place_list(x,y,obj_enemy,_hitAttackFrame,false);
	
	if (_hits > 0) {
		for(var i = 0; i < _hits; i++) {
			//if instance has not been hit yet
			var _hitID = _hitAttackFrame [| i];
			if (ds_list_find_index(hitByAttack, _hitID) == -1) {
				ds_list_add(hitByAttack, _hitID);
				with (_hitID) {
					//insert flash
					scr_EnemyHit(2);
				}
			}
		}
	}
	
	ds_list_destroy(_hitAttackFrame);
	mask_index = spr_Player;
	
	if(scr_animationEnd()) {
		sprite_index = spr_Player;
		state = PLAYERSTATE.FREE;
	}
}