// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro TILE_SIZE 4

function scr_collisionCheck(){
	
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpd, y)) {
		x -= x mod TILE_SIZE;
		if(sign(hSpd == 1)) {x += TILE_SIZE - 1;}
		hSpd = 0;
		_collision = true;		
	}
	
	//Horizontal Move Commit
	x += hSpd;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpd)) {
		y -= y mod TILE_SIZE;
		if(sign(vSpd == 1)) {y += TILE_SIZE - 1;}
		vSpd = 0;
		_collision = true;		
	}
	
	//Vertical Move Commit
	y += vSpd;	
	
	return _collision;
}