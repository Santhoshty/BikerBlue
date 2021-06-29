// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerPressKeys(positive, negative){
	
	if(positive && negative) || (!positive && !negative) {return false;}
	
	return true;
	
}