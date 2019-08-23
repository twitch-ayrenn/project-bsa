/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheWispMother == true)
	{
		if (global.hasBoughtPurpleWisp == true)
		{
			global.selectedWispItem = WispBossItems.PurpleWispBottle;
			if (instance_exists(obj_selectedWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedWispArrow);}
		}
		if (global.hasBoughtPurpleWisp == false && global.playerMoney >= global.costPurpleWisp)
		{
			global.hasBoughtPurpleWisp = true;
			global.playerMoney -= global.costPurpleWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}