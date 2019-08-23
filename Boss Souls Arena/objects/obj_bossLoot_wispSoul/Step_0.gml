/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtWispSoul == false && spawnBuyButton == true && global.hasSlainTheSoulWisp == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedSoulWispItem == SoulWispItems.Wisp_Soul)
	{
		sprite_index = spr_wispSoul_outline_green;		
	}
	if (global.selectedSoulWispItem != SoulWispItems.Wisp_Soul)
	{
		sprite_index = spr_wispSoul_outline_red;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_wispSoul;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
