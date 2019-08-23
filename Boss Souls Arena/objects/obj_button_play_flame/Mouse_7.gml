/// @description Insert description here
if (global.demo == false)
{
	if(global.soundOn == true)
	{
		audio_play_sound(snd_buttonClick,Prioity.Normal,false);
	}
	with (par_graveyardBossButtons)
	{
		visible = 0;
		mask_index = spr_prop_cup;
		show = false;
	}
	with (par_flameBossButtons)
	{
		if (gameMaster.chosenClass == Class.The_Assasin && global.assasinKeeper)
		{
			visible = 1;
			mask_index = sprite_index;
			show = true;
		}
		if (gameMaster.chosenClass == Class.The_Warrior && global.warriorKeeper)
		{
			visible = 1;
			mask_index = sprite_index;
			show = true;
		}
		if (gameMaster.chosenClass == Class.The_Mage && global.mageKeeper)
		{
			visible = 1;
			mask_index = sprite_index;
			show = true;
		}
		if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopKeeper)
		{
			visible = 1;
			mask_index = sprite_index;
			show = true;
		}
		if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodKeeper)
		{
			visible = 1;
			mask_index = sprite_index;
			show = true;
		}
	}
	with (par_soulBossButtons)
	{
		visible = 0;
		mask_index = spr_prop_cup;	
		show = false;
	}
	with (par_royalBossButtons)
	{
		visible = 0;
		mask_index = spr_prop_cup;
		show = false;
	}
	with (par_challangesButtons)
	{
		visible = 0;
		mask_index = spr_prop_cup;
		show = false;
	}
}
