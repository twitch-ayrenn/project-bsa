/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheBloodPrince == true)
	{
		if (global.hasBoughtVampireCrown == true)
		{
			global.selectedVampireItem = VampireBossItems.VampireCrown;
			if (instance_exists(obj_selectedVampireArrow) == false){instance_create_depth(x,y,-1000,obj_selectedVampireArrow);}
		}
		if (global.hasBoughtVampireCrown == false && global.playerMoney >= global.costVampireCrown)
		{
			global.hasBoughtVampireCrown = true;
			global.playerMoney -= global.costVampireCrown;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}