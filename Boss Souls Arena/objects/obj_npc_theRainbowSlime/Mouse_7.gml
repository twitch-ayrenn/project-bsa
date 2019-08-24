/// @description Insert description here
if (gameMaster.rainbowSlimeUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (rainbowSlimeProgress < 2){menu = Menues.BossSelect;chosenClass = Character.RainbowSlime;}
		if (rainbowSlimeProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.RainbowSlime;}
	}
}