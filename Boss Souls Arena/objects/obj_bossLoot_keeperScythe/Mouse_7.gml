/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheGraveKeeper == true)
	{
		if (global.hasBoughtScytheOfDeath == true)
		{
			global.selectedKeeperItem = KeeperBossItems.KeeperScythe;
			if (instance_exists(obj_selectedKeeperArrow) == false){instance_create_depth(x,y,-1000,obj_selectedKeeperArrow);}
		}
		if (global.hasBoughtScytheOfDeath == false && global.playerMoney >= global.costScytheOfDeath)
		{
			global.hasBoughtScytheOfDeath = true;
			global.playerMoney -= global.costScytheOfDeath;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}