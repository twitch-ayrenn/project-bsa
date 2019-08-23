/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtVampireCrown == false && spawnBuyButton == true && global.hasSlainTheBloodPrince == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedVampireItem == VampireBossItems.VampireCrown)
	{
		sprite_index = spr_vampireCrown_greenOutline;	
	}
	if (global.selectedVampireItem != VampireBossItems.VampireCrown)
	{
		sprite_index = spr_vampireCrown_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_vampireCrown;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
