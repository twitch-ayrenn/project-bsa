/// @description Insert description here
if (gameMaster.agentOfGodUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (agentOfGodProgress < 2){menu = Menues.BossSelect;chosenClass = Character.PlaugeWalker;}
		if (agentOfGodProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.PlaugeWalker;}
		global.itemSlots = int64(2 + (agentOfGodProgress/8));
		with(par_loot){reset = true;}
		global.slot1 = false; global.slot4 = false;
		global.slot2 = false; global.slot5 = false;
		global.slot3 = false; global.slot6 = false;
	}
}