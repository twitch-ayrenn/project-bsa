/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtLifeWisp == false && spawnBuyButton == true && global.hasSlainTheSoulWisp == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedSoulWispItem == SoulWispItems.Life_Wisp)
	{
		sprite_index = spr_wispJar_lifeWisp_outline_green;		
	}
	if (global.selectedSoulWispItem != SoulWispItems.Life_Wisp)
	{
		sprite_index = spr_wispJar_lifeWisp_outline_red;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_wispJar_lifeWisp;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
