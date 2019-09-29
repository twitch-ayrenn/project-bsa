/// @description Insert description here
if (gameMaster.plaugeWalkerUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (pluageWalkerProgress < 2){menu = Menues.BossSelect;chosenClass = Character.PlaugeWalker;}
		if (plaugeWalkerProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.PlaugeWalker;}
		global.itemSlots = int64(2 + (plaugeWalkerProgress/8));
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
}