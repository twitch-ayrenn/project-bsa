/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulGuards == true)
	{
		if (global.hasBoughtAngelsFeather == true)
		{
			global.selectedSoulGuardsItem = SoulGuardsItem.AngelsFeather;
			if (instance_exists(obj_selectedSoulGuardsArrows) == false){instance_create_depth(x,y,-1000,obj_selectedSoulGuardsArrows);}
		}
		if (global.hasBoughtAngelsFeather == false && global.playerMoney >= global.costAngelsFeather)
		{
			global.hasBoughtAngelsFeather = true;
			global.playerMoney -= global.costAngelsFeather;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}