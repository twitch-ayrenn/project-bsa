/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheGraveKeeper == true)
	{
		if (global.hasBoughtBatCarrier == true)
		{
			global.selectedKeeperItem = KeeperBossItems.KeeperBatCarrier;
			if (instance_exists(obj_selectedKeeperArrow) == false){instance_create_depth(x,y,-1000,obj_selectedKeeperArrow);}
		}
		if (global.hasBoughtBatCarrier== false && global.playerMoney >= global.costBatCarrier)
		{
			global.hasBoughtBatCarrier = true;
			global.playerMoney -= global.costBatCarrier;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}