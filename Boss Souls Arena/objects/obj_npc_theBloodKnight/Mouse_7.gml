/// @description Insert description here
if (gameMaster.bloodKnightUnlocked== true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (bloodKnightProgress < 2){menu = Menues.BossSelect;chosenClass = Character.BloodKnight;}
		if (bloodKnightProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.BloodKnight;}
		global.itemSlots = int64(2 + (bloodKnightProgress/8));
		with(par_loot){reset = true;}
		global.slot1 = false; global.slot4 = false;
		global.slot2 = false; global.slot5 = false;
		global.slot3 = false; global.slot6 = false;
	}
}