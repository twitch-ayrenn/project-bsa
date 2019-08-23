/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtBatCarrier == false && spawnBuyButton == true && global.hasSlainTheGraveKeeper == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedKeeperItem == KeeperBossItems.KeeperBatCarrier)
	{
		sprite_index = spr_batJar_greenOutline;	
	}
	if (global.selectedKeeperItem != KeeperBossItems.KeeperBatCarrier)
	{
		sprite_index = spr_batJar_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_batJar;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
