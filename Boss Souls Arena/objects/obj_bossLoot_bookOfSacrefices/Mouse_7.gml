/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheFlameGate == true)
	{
		if (global.hasBoughtSacrefices == true)
		{
			global.selectedFlameGateItems = FlameGateItems.Book_Of_Sacrefices;
			if (instance_exists(obj_selectedFlameGateArrow) == false){instance_create_depth(x,y,-1000,obj_selectedFlameGateArrow);}
		}
		if (global.hasBoughtSacrefices == false && global.playerMoney >= global.costSacrefices)
		{
			global.hasBoughtSacrefices = true;
			global.playerMoney -= global.costSacrefices;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}