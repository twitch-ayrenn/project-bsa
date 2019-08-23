/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheWispMother == true)
	{
		if (global.hasBoughtRedWisp == true)
		{
			global.selectedWispItem = WispBossItems.RedWispBottle;
			if (instance_exists(obj_selectedWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedWispArrow);}
		}
		if (global.hasBoughtRedWisp == false && global.playerMoney >= global.costRedWisp)
		{
			global.hasBoughtRedWisp = true;
			global.playerMoney -= global.costRedWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}