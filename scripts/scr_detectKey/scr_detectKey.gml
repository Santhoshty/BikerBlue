// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_detectKey(){
	
	leftKey = keyboard_check(vk_left);
	rightKey = keyboard_check(vk_right);
	upKey = keyboard_check(vk_up);
	downKey = keyboard_check(vk_down);
	
	attackKey = keyboard_check_pressed(vk_space);
	dashKey = keyboard_check_pressed(vk_shift);
	enterKey = keyboard_check_pressed(vk_enter);

}