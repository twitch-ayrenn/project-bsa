/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheMadWitches == true)
	{
		if (global.hasBoughtAnniesDeathCap == true)
		{
			global.selectedWitchItem = WitchBossItems.AnniesDeathCap;
			if (instance_exists(obj_selectedWitchItem) == false){instance_create_depth(x,y,-1000,obj_selectedWitchItem);}
		}
		if (global.hasBoughtAnniesDeathCap == false && global.playerMoney >= global.costAnniesDeathCap)
		{
			global.hasBoughtAnniesDeathCap = true;
			global.playerMoney -= global.costAnniesDeathCap;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}