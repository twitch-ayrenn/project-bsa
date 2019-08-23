/// @description Insert description here
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
	if (gameMaster.chosenClass == Class.The_Assasin && global.assasinWisp && global.assasinGuards)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Warrior && global.warriorWisp && global.warriorGuards)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Mage && global.mageWisp && global.mageGuards)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopWisp && global.shopGuards)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodWisp && global.bloodGuards)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
}
with (par_challangesButtons)
{
	visible = 0;
	mask_index = spr_prop_cup;
	show = false;
}
