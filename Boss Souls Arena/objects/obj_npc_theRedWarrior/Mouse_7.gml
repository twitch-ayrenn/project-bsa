/// @description Insert description here
if (gameMaster.theRedWarriorUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (theRedWarriorProgress < 2){menu = Menues.BossSelect;chosenClass = Character.TheRedWarrior;}
		if (theRedWarriorProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.TheRedWarrior;}
	}
}