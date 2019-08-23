/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainDeathGeneralZarodil == true)
	{
		if (global.hasBoughtBladeOfPower == true)
		{
			global.selectedDeathLordItems = Artifacts.BladeOfPower;
			if (instance_exists(obj_selectedArtifactArrows) == false){instance_create_depth(x,y,-1000,obj_selectedArtifactArrows);}
		}
		if (global.hasBoughtBladeOfPower == false && global.playerMoney >= global.costBladeOfPower)
		{
			global.hasBoughtBladeOfPower = true;
			global.playerMoney -= global.costBladeOfPower;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}