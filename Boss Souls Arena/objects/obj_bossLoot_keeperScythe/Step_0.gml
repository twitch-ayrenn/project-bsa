/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtScytheOfDeath == false && spawnBuyButton == true && global.hasSlainTheGraveKeeper == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedKeeperItem == KeeperBossItems.KeeperScythe)
	{
		sprite_index = spr_scytheOfDeathItem_greenOutline;	
	}
	if (global.selectedKeeperItem != KeeperBossItems.KeeperScythe)
	{
		sprite_index = spr_scytheOfDeathItem_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_scytheOfDeathItem;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
