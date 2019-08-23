/// @description Insert description here
if (gameMaster.shopkeeperUnlocked== true)
{
	if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
	with (gameMaster)
	{
		if (shopkeeperProgress < 1){menu = Menues.BossSelect;chosenClass = Character.Shopkeeper;}
		if (shopkeeperProgress > 0){menu = Menues.BossLoot;  chosenClass = Character.Shopkeeper;}
	}
}