/// @description Insert description here
if (gameMaster.plaugeWalkerUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (pluageWalkerProgress < 1){menu = Menues.BossSelect;chosenClass = Character.PlaugeWalker;}
		if (plaugeWalkerProgress > 0){menu = Menues.BossLoot;  chosenClass = Character.PlaugeWalker;}
	}
}