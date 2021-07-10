/// @description Insert description here
// You can write your code in this editor

global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

//font
font = Onyx;

//variables
inputting = false;

alarm[0] = 1 * 60;

//colors
dark_blue	=	$592B00;
mid_blue	=	$8C5F00;
dark_cyan	=	$BEB900;
light_cyan	=	$E5F49F;
pink		=	$B261FF;

audio_group_load(audiogroup_default);
audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundEffects);


display_set_gui_size(global.view_width, global.view_height);



enum MENU_PAGE {
	MAIN,
	STORY,
	ENDLESS,
	HIGHSCORES,
	SETTINGS,
	LOAD,
	LEVELSELECT,
	AUDIO,
	VIDEO,
	CONTROLS,
	HEIGHT	
}

enum MENU_ELEMENT_TYPE  {
	SCRIPTRUNNER,
	PAGETRANSFER,
	SLIDER,
	SHIFT,
	TOGGLE,
	INPUT
}

//create menu pages
ds_menu_main = scr_createMenuPage(
	
	["STORY",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.STORY],
	["ENDLESS",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.ENDLESS],
	["HIGH SCORES", MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.HIGHSCORES],
	["SETTINGS",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.SETTINGS],
	["EXIT",		MENU_ELEMENT_TYPE.SCRIPTRUNNER, exitgame]

);

ds_menu_story = scr_createMenuPage(

	["NEW GAME",		MENU_ELEMENT_TYPE.SCRIPTRUNNER, newgame],
	["LOAD GAME",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.LOAD],
	["LEVEL SELECT",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.LEVELSELECT],
	["BACK",			MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.MAIN]
	
);

ds_menu_loadgame = scr_createMenuPage(

	["SLOT 1",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["SLOT 2",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["SLOT 3",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.STORY]
);

ds_menu_levelselect = scr_createMenuPage(

	["LEVEL 1", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 2", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 3", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 4", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 5", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 6", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.STORY]
	
);

ds_menu_mapselect = scr_createMenuPage(

	["LEVEL 1", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 2", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 3", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 4", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 5", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["LEVEL 6", MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadgame],
	["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.MAIN]
	
);

ds_menu_highscores = scr_createMenuPage(

	["SLOT 1",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadscore],
	["SLOT 2",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadscore],
	["SLOT 3",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadscore],
	["SLOT 4",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadscore],
	["SLOT 5",	MENU_ELEMENT_TYPE.SCRIPTRUNNER, loadscore],
	["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.MAIN]
);

ds_menu_settings = scr_createMenuPage(

	["AUDIO",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.AUDIO],
	["VIDEO",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.VIDEO],
	["CONTROLS",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.CONTROLS],
	["BACK",		MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.MAIN]

);

ds_menu_audio = scr_createMenuPage(

	["MASTER",	MENU_ELEMENT_TYPE.SLIDER,		changeVolume, 1, [0,1]],
	["SOUNDS",	MENU_ELEMENT_TYPE.SLIDER,		changeVolume, 1, [0,1]],
	["MUSIC",	MENU_ELEMENT_TYPE.SLIDER,		changeVolume, 1, [0,1]],
	["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.SETTINGS],

);

ds_menu_video = scr_createMenuPage(

	["RESOLUTION", MENU_ELEMENT_TYPE.SHIFT, changeResolution, 0, ["320 x 180", "640 x 360", "1280 x 720", "1920 x 1080", "2560 x 1440", "3840 x 2160"]],
	["WINDOW MODE", MENU_ELEMENT_TYPE.TOGGLE, changeWindowMode, 1, ["FULLSCREEN", "WINDOW", "BORDERLESS WINDOW"]],
	["BACK", MENU_ELEMENT_TYPE.PAGETRANSFER, MENU_PAGE.SETTINGS],

);

ds_menu_controls = scr_createMenuPage(
	
		["UP",		MENU_ELEMENT_TYPE.INPUT,	"upKey",		vk_up],
		["DOWN",	MENU_ELEMENT_TYPE.INPUT,	"downKey",		vk_down],
		["LEFT",	MENU_ELEMENT_TYPE.INPUT,	"leftKey",		vk_left],
		["RIGHT",	MENU_ELEMENT_TYPE.INPUT,	"rightKey",		vk_right],
		["ATTACK",	MENU_ELEMENT_TYPE.INPUT,	"attackKey",	vk_space],
		["DODGE",	MENU_ELEMENT_TYPE.INPUT,	"dashKey",		vk_shift],
		["BACK",	MENU_ELEMENT_TYPE.PAGETRANSFER,				MENU_PAGE.SETTINGS],

);

page = 0;

menu_pages = [ds_menu_main, ds_menu_story, ds_menu_mapselect, ds_menu_highscores, ds_menu_settings, ds_menu_loadgame, ds_menu_levelselect, ds_menu_audio, ds_menu_video, ds_menu_controls];


var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len) {
	menu_option[i] = 0; 
	i++;
}

