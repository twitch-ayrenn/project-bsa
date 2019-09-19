/// @description Insert description here
if (gameMaster.pyromancerUnlocked== true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (pyromancerProgress < 2){menu = Menues.BossSelect;chosenClass = Character.Pyromancer;}
		if (pyromancerProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.Pyromancer;}
		global.itemSlots = int64(2 + (pyromancerProgress/8));
		with(par_loot){reset = true;}
		global.slot1 = false; global.slot4 = false;
		global.slot2 = false; global.slot5 = false;
		global.slot3 = false; global.slot6 = false;
	}
}