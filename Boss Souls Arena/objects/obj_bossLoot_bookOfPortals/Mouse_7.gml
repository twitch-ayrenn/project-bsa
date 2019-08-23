/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheFlameGate == true)
	{
		if (global.hasBoughtPortal == true)
		{
			global.selectedFlameGateItems = FlameGateItems.Book_Of_Portals;
			if (instance_exists(obj_selectedFlameGateArrow) == false){instance_create_depth(x,y,-1000,obj_selectedFlameGateArrow);}
		}
		if (global.hasBoughtPortal == false && global.playerMoney >= global.costPortal)
		{
			global.hasBoughtPortal = true;
			global.playerMoney -= global.costPortal;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}