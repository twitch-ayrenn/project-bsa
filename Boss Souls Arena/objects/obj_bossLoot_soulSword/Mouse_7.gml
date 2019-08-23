/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulGuards == true)
	{
		if (global.hasBoughtSoulSword == true)
		{
			global.selectedSoulGuardsItem = SoulGuardsItem.SoulSword;
			if (instance_exists(obj_selectedSoulGuardsArrows) == false){instance_create_depth(x,y,-1000,obj_selectedSoulGuardsArrows);}
		}
		if (global.hasBoughtSoulSword == false && global.playerMoney >= global.costSoulSword)
		{
			global.hasBoughtSoulSword = true;
			global.playerMoney -= global.costSoulSword;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}