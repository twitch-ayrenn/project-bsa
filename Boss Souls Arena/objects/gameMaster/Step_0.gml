/// @description code
depth = -1000;
gamepad_set_axis_deadzone(0,0.5);
gamepad_set_axis_deadzone(1,0.5);
gamepad_set_axis_deadzone(2,0.5);
gamepad_set_axis_deadzone(3,0.5);
if (global.hardcore == true){global.campaignDifficulty = clamp(global.campaignDifficulty,1.1,1.35);}
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
var doOnce = true;
if (keyboard_check_released(ord("F")))
{
	if (window_get_fullscreen() && doOnce)	
	{
		doOnce = false;
		window_set_fullscreen(false);	
	}
	if (window_get_fullscreen() == false && doOnce)	
	{
		doOnce = false;
		window_set_fullscreen(true);	
	}
}
// DeathScreen go away auto
if (menu == Menues.Death || menu == Menues.BossSlain)
{
	autoGoToMenuStacks++;
	if (menu == Menues.Death && autoGoToMenuStacks >= (4)*30)
	{
		autoGoToMenuStacks = 0;
		queLeave = true;	
	}
	if (menu == Menues.BossSlain && autoGoToMenuStacks >= (12)*30 && chosenBoss != Boss.ArenaKing)
	{
		autoGoToMenuStacks = 0;
		queLeave = true;	
	}
}
if (gameMaster.assassinItems[Boss.ArenaKing] == true && gameMaster.pyromancerItems[Boss.ArenaKing] == true && gameMaster.bloodKnightItems[Boss.ArenaKing] == true
&& gameMaster.angelSlayerItems[Boss.ArenaKing] == true && gameMaster.agentOfGodItems[Boss.ArenaKing] == true && gameMaster.gravelingItems[Boss.ArenaKing] == true
&& gameMaster.plaugeWalkerItems[Boss.ArenaKing] == true)
{
	global.itemAllCampaign = true;
}
//balance

