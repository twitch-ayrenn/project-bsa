/// @description Insert description here
if (gameMaster.bloodKnightUnlocked== true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (bloodKnightProgress < 2){menu = Menues.BossSelect;chosenClass = Character.BloodKnight;}
		if (bloodKnightProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.BloodKnight;}
	}
}