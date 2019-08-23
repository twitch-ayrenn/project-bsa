/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulGuards == true)
	{
		if (global.hasBoughtDevilsFeather == true)
		{
			global.selectedSoulGuardsItem = SoulGuardsItem.DevilsFeather;
			if (instance_exists(obj_selectedSoulWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedSoulWispArrow);}
		}
		if (global.hasBoughtDevilsFeather == false && global.playerMoney >= global.costDevilsFeather)
		{
			global.hasBoughtDevilsFeather = true;
			global.playerMoney -= global.costDevilsFeather;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}