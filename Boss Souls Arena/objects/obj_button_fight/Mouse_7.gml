/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	with (gameMaster)
	{
		menu = Menues.BossSelect;
		transitionAlpha = 1;
		fightAlpha = 1;
		queFight = false;
		fightTransitionAlpha = 0;
		tutorialAlpha = 1;
		playerTutorialAlpha = 0;
		quePlayerTutorial = false;
		tutorialFadeOut = false;
		checkOnce = true;
		if (global.tutorial == true)
		{
			global.tutorialBoss = true;
			global.tutorialPlayer = false;
		}
	}
}
if (gameMaster.chosenMode == Menues.BossRush)
{
	with (gameMaster)
	{
		chosenBoss = Boss.FlameGate;
		queFight = true;
		transitionAlpha = 1;
		fightAlpha = 1;
		fightTransitionAlpha = 0;
		tutorialAlpha = 1;
		playerTutorialAlpha = 0;
		quePlayerTutorial = false;
		tutorialFadeOut = false;
		checkOnce = true;
		if (audio_is_playing(snd_music_victory) == true)
		{
			audio_sound_gain(snd_music_menu,0,(0.25)*1000);
		}
	}
}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
with (par_scrollingThings)
{
	x = xstart;	
}
