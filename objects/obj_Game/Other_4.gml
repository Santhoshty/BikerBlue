/// @description Insert description here
// You can write your code in this editor

layer_set_visible("Coll", false);

if (room != TitleRoom) {audio_stop_sound(snd_titlescreen);}

audio_play_sound(snd_room1bgm, 5, true);

switch(room) {
	case 1: break;
	case 2: audio_play_sound(snd_room1bgm, 5, true); break;
	case 3: break;
	case 4: break;
	
}