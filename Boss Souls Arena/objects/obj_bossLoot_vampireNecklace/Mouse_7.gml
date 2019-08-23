/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheBloodPrince == true)
	{
		if (global.hasBoughtVampireBloodNecklace == true)
		{
			global.selectedVampireItem = VampireBossItems.VampireBloodNecklace;
			if (instance_exists(obj_selectedVampireArrow) == false){instance_create_depth(x,y,-1000,obj_selectedVampireArrow);}
		}
		if (global.hasBoughtVampireBloodNecklace == false && global.playerMoney >= global.costVampireBloodNecklace)
		{
			global.hasBoughtVampireBloodNecklace = true;
			global.playerMoney -= global.costVampireBloodNecklace;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}