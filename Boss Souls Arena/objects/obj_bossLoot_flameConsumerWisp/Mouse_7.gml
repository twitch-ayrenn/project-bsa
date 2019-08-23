/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheInfernalWisp == true)
	{
		if (global.hasBoughtFlameConsumerWisp == true)
		{
			global.selectedInfernalItems = InfernalBossItems.Flame_Consumer_Wisp;
			if (instance_exists(obj_selectedInfernalArrow) == false){instance_create_depth(x,y,-1000,obj_selectedInfernalArrow);}
		}
		if (global.hasBoughtFlameConsumerWisp == false && global.playerMoney >= global.costFlameConsumerWisp)
		{
			global.hasBoughtFlameConsumerWisp = true;
			global.playerMoney -= global.costFlameConsumerWisp;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}