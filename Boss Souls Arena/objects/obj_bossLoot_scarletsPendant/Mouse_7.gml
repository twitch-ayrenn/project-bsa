/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheMadWitches == true)
	{
		if (global.hasBoughtScarletsPendant == true)
		{
			global.selectedWitchItem = WitchBossItems.ScarletsPendant;
			if (instance_exists(obj_selectedWitchItem) == false){instance_create_depth(x,y,-1000,obj_selectedWitchItem);}
		}
		if (global.hasBoughtScarletsPendant == false && global.playerMoney >= global.costScarletsPendant)
		{
			global.hasBoughtScarletsPendant = true;
			global.playerMoney -= global.costScarletsPendant;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}