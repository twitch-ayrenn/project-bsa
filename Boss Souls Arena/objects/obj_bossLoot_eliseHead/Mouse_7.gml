/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheMadWitches == true)
	{
		if (global.hasBoughtEliseHead == true)
		{
			global.selectedWitchItem = WitchBossItems.EliseHead;
			if (instance_exists(obj_selectedWitchItem) == false){instance_create_depth(x,y,-1000,obj_selectedWitchItem);}
		}
		if (global.hasBoughtEliseHead == false && global.playerMoney >= global.costEliseHead)
		{
			global.hasBoughtEliseHead = true;
			global.playerMoney -= global.costEliseHead;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}