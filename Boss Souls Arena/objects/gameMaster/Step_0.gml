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
if (menu == Menues.PlayerSelect)
{
	
}
//game spawn
if (menu == Menues.Play && room == rm_arena)
{
	x = global.arenaMiddleX;
	y = global.arenaMiddleY;
	if (global.tutorialBoss == true && keyboard_check(vk_anykey) || global.tutorialBoss == true && mouse_check_button(mb_any))
	{
		global.tutorialBoss = false;
	}
}
//proggresion
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
	menu = Menues.Main;
	room_goto(rm_menu);
}
//Bossfix
if (menu == Menues.Main)
{
	chosenBoss = Boss.NoBoss;
}
//optemisation

//stats
//balance
if (global.dD > 1.32){global.dD = 1.32;}
if (global.dD < 0.68){global.dD = 0.68;}

