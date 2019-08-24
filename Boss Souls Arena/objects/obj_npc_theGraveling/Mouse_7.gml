/// @description Insert description here
if (gameMaster.gravelingUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (gravelingProgress < 2){menu = Menues.BossSelect;chosenClass = Character.Graveling;}
		if (gravelingProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.Graveling;}
	}
}