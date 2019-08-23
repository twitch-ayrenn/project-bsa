/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtBladeOfPower == false && spawnBuyButton == true && global.hasSlainDeathGeneralZarodil == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedDeathLordItems == Artifacts.BladeOfPower)
	{
		sprite_index = spr_bladeOfPower_outline_green;		
	}
	if (global.selectedDeathLordItems != Artifacts.BladeOfPower)
	{
		sprite_index = spr_bladeOfPower_outline_red;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_bladeOfPower;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
