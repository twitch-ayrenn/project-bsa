/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtVampireBloodNecklace == false && spawnBuyButton == true && global.hasSlainTheBloodPrince == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedVampireItem == VampireBossItems.VampireBloodNecklace)
	{
		sprite_index = spr_vampireNecklace_greenOutline;	
	}
	if (global.selectedVampireItem != VampireBossItems.VampireBloodNecklace)
	{
		sprite_index = spr_vampireNecklace_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_vampireNecklace;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
