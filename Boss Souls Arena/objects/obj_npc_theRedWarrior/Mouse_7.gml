/// @description Insert description here
if (gameMaster.theRedWarriorUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (theRedWarriorProgress < 2){menu = Menues.BossSelect;chosenClass = Character.TheRedWarrior;}
		if (theRedWarriorProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.TheRedWarrior;}
		global.itemSlots = int64(1 + (theRedWarriorProgress/3));
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