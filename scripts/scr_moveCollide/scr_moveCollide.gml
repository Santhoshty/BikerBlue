// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_moveCollide(xplace, yplace){
	if(!place_meeting(x + xplace, y, obj_wall)) {
		x += xplace;
	}
	
	if(!place_meeting(x, y + yplace, obj_wall)) {
		y += yplace;
	}

}