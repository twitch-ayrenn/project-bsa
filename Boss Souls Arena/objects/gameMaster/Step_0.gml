/// @description code
depth = -1000;
//mennues
if (room == rm_beforeGame)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_startgame,Prioity.VeryHigh,true);
	}
}
//game spawn
if (menu == Menues.Play && room == rm_arena)
{
	x = global.arenaMiddleX;
	y = global.arenaMiddleY;
	if (global.tutorialPlayer == true && keyboard_check(vk_anykey) && tutorialFadeOut == false && playerTutorialAlpha == 1  
	||  global.tutorialPlayer == true && mouse_check_button(mb_any) && tutorialFadeOut == false && playerTutorialAlpha == 1)
	{
		global.tutorial = false;
		tutorialFadeOut = true;
	}
	if (global.tutorialBoss == true && keyboard_check(vk_anykey) || global.tutorialBoss == true && mouse_check_button(mb_any))
	{
		global.tutorialBoss = false;
	}
}
//proggresion
if (global.itemSlots > 6){global.itemSlots = 6; global.maxItemSlots = 6;}
//settings
if (keyboard_check_released(ord("I")))
{	
	if (global.ShowInfo == false)
	{
		global.ShowInfo = true;
	}
}
if (keyboard_check_released(ord("F")) && fullscreen == true)
{
	fullscreen = false;
}
if (keyboard_check_released(vk_escape))
{	
	deathAlpha = 0;
	transitionAlpha = 0;
	fightAlpha = 1;
	fightTransitionAlpha = 0;
	queFight = false;
	queLeave = false;
	leaveTranistionAlpha = 0;
	backToMenuAlpha = 1;
	tutorialAlpha = 1;
	playerTutorialAlpha = 0;
	quePlayerTutorial = false;
	checkOnce = true;
	autoGoToMenuStacks = 0;
	audio_stop_sound(snd_music_menu);
	global.playMenuMusic = true;
	menu = Menues.Main;
	room_goto(rm_menu);
}
//Bossfix
if (menu == Menues.Main)
{
	chosenBoss = Boss.NoBoss;
}
// DeathScreen go away auto
if (menu == Menues.Death)
{
	autoGoToMenuStacks++;
	if (autoGoToMenuStacks >= (4)*30)
	{
		autoGoToMenuStacks = 0;
		queLeave = true;	
	}
}
//balance
if (global.dD > 1.32){global.dD = 1.32;}
if (global.dD < 0.68){global.dD = 0.68;}

