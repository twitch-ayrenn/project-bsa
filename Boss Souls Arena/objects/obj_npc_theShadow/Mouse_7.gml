/// @description Insert description here
if (gameMaster.assassinUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (assassinProgress < 2){menu = Menues.BossSelect;chosenClass = Character.ShadowAssassin;}
		if (assassinProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.ShadowAssassin;}
		global.itemSlots = int64(2 + (assassinProgress/8));
		with(par_loot){reset = true;}
		global.slot1 = false; global.slot4 = false;
		global.slot2 = false; global.slot5 = false;
		global.slot3 = false; global.slot6 = false;
	}
}