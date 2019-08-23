/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtVampireCloak == false && spawnBuyButton == true && global.hasSlainTheBloodPrince == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedVampireItem == VampireBossItems.VampireCloak)
	{
		sprite_index = spr_vampireCloak_greenOutline;	
	}
	if (global.selectedVampireItem != VampireBossItems.VampireCloak)
	{
		sprite_index = spr_vampireCloak_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_vampireCloak;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
