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
	if (gameMaster.chosenClass == Class.The_Assasin && global.assasinInfernal && global.assasinGate)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Warrior && global.warriorInfernal && global.warriorGate)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Mage && global.mageInfernal && global.mageGate)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopInfernal && global.shopGate)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
	if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodInfernal && global.bloodGate)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
	}
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
