/// @description Insert description here
with (gameMaster)
{
	menu = Menues.BossSelect;
	transitionAlpha = 1;
	fightAlpha = 1;
	queFight = false;
	fightTransitionAlpha = 0;
}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
with (par_scrollingThings)
{
	x = xstart;	
}
