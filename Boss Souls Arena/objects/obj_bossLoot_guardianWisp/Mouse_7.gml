/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheInfernalWisp == true)
	{
		if (global.hasBoughtGuardianWisp == true)
		{
			global.selectedInfernalItems = InfernalBossItems.Guardian_Wisp;
			if (instance_exists(obj_selectedInfernalArrow) == false){instance_create_depth(x,y,-1000,obj_selectedInfernalArrow);}
		}
		if (global.hasBoughtGuardianWisp == false && global.playerMoney >= global.costGuardianWisp)
		{
			global.hasBoughtGuardianWisp = true;
			global.playerMoney -= global.costGuardianWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}