/// @description Insert description here
if (gameMaster.assassinUnlocked == true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (assassinProgress < 2){menu = Menues.BossSelect;chosenClass = Character.ShadowAssassin;}
		if (assassinProgress > 1){menu = Menues.BossLoot;  chosenClass = Character.ShadowAssassin;}
	}
}