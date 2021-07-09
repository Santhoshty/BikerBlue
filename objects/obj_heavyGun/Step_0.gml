/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_denial)) {
	x = obj_denial.x + xbuffer;
	y = obj_denial.y + ybuffer;
}

else{instance_destroy(self);}

