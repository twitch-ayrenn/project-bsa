/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulWisp == true)
	{
		if (global.hasBoughtLifeWisp == true)
		{
			global.selectedSoulWispItem = SoulWispItems.Life_Wisp;
			if (instance_exists(obj_selectedSoulWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedSoulWispArrow);}
		}
		if (global.hasBoughtLifeWisp == false && global.playerMoney >= global.costLifeWisp)
		{
			global.hasBoughtLifeWisp = true;
			global.playerMoney -= global.costLifeWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}