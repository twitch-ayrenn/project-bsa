/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheBloodPrince == true)
	{
		if (global.hasBoughtVampireCloak == true)
		{
			global.selectedVampireItem = VampireBossItems.VampireCloak;
			if (instance_exists(obj_selectedVampireArrow) == false){instance_create_depth(x,y,-1000,obj_selectedVampireArrow);}
		}
		if (global.hasBoughtVampireCloak == false && global.playerMoney >= global.costVampireCloak)
		{
			global.hasBoughtVampireCloak = true;
			global.playerMoney -= global.costVampireCloak;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}