/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheWispMother == true)
	{
		if (global.hasBoughtGreenWisp == true)
		{
			global.selectedWispItem = WispBossItems.GreenWispBottle;
			if (instance_exists(obj_selectedWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedWispArrow);}
		}
		if (global.hasBoughtGreenWisp == false && global.playerMoney >= global.costGreenWisp)
		{
			global.hasBoughtGreenWisp = true;
			global.playerMoney -= global.costGreenWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}