/// @description Insert description here
if(global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
with (obj_bossSelect_theFatZombie)
{
	visible = 1;
	mask_index = sprite_index;
	show = true;
}
with (obj_hunt_theFatZombie)
{
	visible = 1;
	mask_index = sprite_index;
	show = true;
}	
if (global.assasinZombie && gameMaster.chosenClass == Class.The_Assasin || global.warriorZombie  && gameMaster.chosenClass == Class.The_Warrior || global.mageZombie  && gameMaster.chosenClass == Class.The_Mage || global.shopZombie  && gameMaster.chosenClass == Class.The_Shopkeeper || global.bloodZombie  && gameMaster.chosenClass == Class.The_BloodKnight)
{
	with (obj_bossSelect_theWispMother)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	with (obj_hunt_theWispMother)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
}
if (global.assasinKeeper && gameMaster.chosenClass == Class.The_Assasin || global.warriorKeeper  && gameMaster.chosenClass == Class.The_Warrior || global.mageKeeper  && gameMaster.chosenClass == Class.The_Mage || global.shopKeeper && gameMaster.chosenClass == Class.The_Shopkeeper || global.bloodKeeper && gameMaster.chosenClass == Class.The_BloodKnight)
{
	with (obj_bossSelect_theBloodPrince)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	with (obj_bossSelect_theMadWitches)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	with (obj_hunt_theBloodPrince)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	with (obj_hunt_theMadWitches)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
}
if (global.assasinMother && gameMaster.chosenClass == Class.The_Assasin || global.warriorMother  && gameMaster.chosenClass == Class.The_Warrior || global.mageMother  && gameMaster.chosenClass == Class.The_Mage || global.shopMother && gameMaster.chosenClass == Class.The_Shopkeeper || global.bloodMother && gameMaster.chosenClass == Class.The_BloodKnight)
{
	with (par_graveyardBossButtons)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	with (par_flameBossButtons)
	{
		visible = 0;
		mask_index = spr_prop_cup;
		show = false;
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