/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheGraveKeeper == true)
	{
		if (global.hasBoughtCloakOfTheKeeper == true)
		{
			global.selectedKeeperItem = KeeperBossItems.KeeperCloak;
			if (instance_exists(obj_selectedKeeperArrow) == false){instance_create_depth(x,y,-1000,obj_selectedKeeperArrow);}
		}
		if (global.hasBoughtCloakOfTheKeeper == false && global.playerMoney >= global.costCloakOfTheKeeper)
		{
			global.hasBoughtCloakOfTheKeeper = true;
			global.playerMoney -= global.costCloakOfTheKeeper;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}