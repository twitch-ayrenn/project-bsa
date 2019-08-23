/// @description Insert description here
if (gameMaster.angelSlayerUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (angelSlayerProgress < 1){menu = Menues.BossSelect;chosenClass = Character.AngelSlayer;}
		if (angelSlayerProgress > 0){menu = Menues.BossLoot;  chosenClass = Character.AngelSlayer;}
	}
}