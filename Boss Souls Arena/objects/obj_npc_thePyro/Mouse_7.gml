/// @description Insert description here
if (gameMaster.pyromancerUnlocked== true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (pyromancerProgress < 2){menu = Menues.BossSelect;chosenClass = Character.Pyromancer;}
		if (pyromancerProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.Pyromancer;}
	}
}