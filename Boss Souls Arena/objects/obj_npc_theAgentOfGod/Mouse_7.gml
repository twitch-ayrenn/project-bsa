/// @description Insert description here
if (gameMaster.agentOfGodUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (agentOfGodProgress < 2){menu = Menues.BossSelect;chosenClass = Character.PlaugeWalker;}
		if (agentOfGodProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.PlaugeWalker;}
	}
}