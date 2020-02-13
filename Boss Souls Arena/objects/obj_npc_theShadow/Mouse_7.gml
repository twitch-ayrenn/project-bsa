/// @description Insert description here
if (gameMaster.assassinUnlocked == true && gameMaster.menu == Menues.PlayerSelect ||
gameMaster.assassinUnlocked == true && gameMaster.menu == Menues.Main )
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (assassinProgress < 2){menu = Menues.BossSelect;chosenClass = Character.ShadowAssassin;}
		if (assassinProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.ShadowAssassin;}
		global.itemSlots = int64(1 + ((assassinProgress-1)/4));
		global.maxItemSlots = global.itemSlots;
	}
	with(par_loot){reset = true;}
	global.slot1 = false; global.slot4 = false;
	global.slot2 = false; global.slot5 = false;
	global.slot3 = false; global.slot6 = false;
	gameMaster.bonusHealth = 0;
	gameMaster.bonusSpeed = 0;
	gameMaster.bonusDash = 0;
	gameMaster.bonusDamage = 0;
	gameMaster.bonusFirerate = 0;
	gameMaster.bonusLifeSteal = 0;
	gameMaster.bonusAura = 0;
	gameMaster.bonusConjur = 0;
	gameMaster.bonusCooldown = 0;
	gameMaster.itemShowInfoFor = Boss.NoBoss;
}