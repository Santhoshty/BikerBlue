/// @description Insert description here
// You can write your code in this editor
randomize();

//Resolution
global.gamePaused = false;
global.gameWidth = 400;
global.gameHeight = 200;
display_set_gui_size(global.gameWidth, global.gameHeight);

//Controls
global.enterKey		= vk_enter;
global.leftKey		= vk_left;
global.rightKey		= vk_right;
global.upKey		= vk_up;
global.downKey		= vk_down;
global.attackKey	= vk_space;
global.dashKey		= vk_shift;

audio_group_load(audiogroup_default);
audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundEffects);



room_goto(ROOM_START);

