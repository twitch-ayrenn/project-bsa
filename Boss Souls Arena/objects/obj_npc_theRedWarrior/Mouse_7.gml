/// @description Insert description here
if (gameMaster.theRedWarriorUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (theRedWarriorProgress < 2){menu = Menues.BossSelect;chosenClass = Character.TheRedWarrior;}
		if (theRedWarriorProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.TheRedWarrior;}
	}
	global.itemSlots = int64(2 + (theRedWarriorProgress/8));
	with(par_loot){reset = true;}
	global.slot1 = false; global.slot4 = false;
	global.slot2 = false; global.slot5 = false;
	global.slot3 = false; global.slot6 = false;
}