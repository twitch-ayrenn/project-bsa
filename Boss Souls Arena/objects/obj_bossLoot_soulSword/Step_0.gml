/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtSoulSword == false && spawnBuyButton == true && global.hasSlainTheSoulGuards == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedSoulGuardsItem == SoulGuardsItem.SoulSword)
	{
		sprite_index = spr_soulSword_outline_green;		
	}
	if (global.selectedSoulGuardsItem != SoulGuardsItem.SoulSword)
	{
		sprite_index = spr_soulSword_outline_red;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_soulSword;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
