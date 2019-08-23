/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheInfernalWisp == true)
	{
		if (global.hasBoughtSpeedAsh == true)
		{
			global.selectedInfernalItems = InfernalBossItems.Speed_Ash;
			if (instance_exists(obj_selectedInfernalArrow) == false){instance_create_depth(x,y,-1000,obj_selectedInfernalArrow);}
		}
		if (global.hasBoughtSpeedAsh == false && global.playerMoney >= global.costSpeedAsh)
		{
			global.hasBoughtSpeedAsh = true;
			global.playerMoney -= global.costSpeedAsh;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}