/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheFlameGate == true)
	{
		if (global.hasBoughtPheonix == true)
		{
			global.selectedFlameGateItems = FlameGateItems.Book_Of_Pheonixes;
			if (instance_exists(obj_selectedFlameGateArrow) == false){instance_create_depth(x,y,-1000,obj_selectedFlameGateArrow);}
		}
		if (global.hasBoughtPheonix == false && global.playerMoney >= global.costPheonix)
		{
			global.hasBoughtPheonix = true;
			global.playerMoney -= global.costPheonix;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}