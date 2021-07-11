/// @description Pause the game
// You can write your code in this editor
audio_play_sound(snd_room1bgm, 5, true);


if (keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused) {
		
		with (all) {	
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
		
		layer_set_visible("Player", false);
		layer_set_visible("Enemies", false);
		
	}
	
	else {
		with (all) {
			image_speed = gamePausedImageSpeed;	
		}
		
		layer_set_visible("Player", true);
		layer_set_visible("Enemies", true);
	}
	
}