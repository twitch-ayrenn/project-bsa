/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulWisp == true)
	{
		if (global.hasBoughtWispSoul == true)
		{
			global.selectedSoulWispItem = SoulWispItems.Wisp_Soul;
			if (instance_exists(obj_selectedSoulWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedSoulWispArrow);}
		}
		if (global.hasBoughtWispSoul == false && global.playerMoney >= global.costWispSoul)
		{
			global.hasBoughtWispSoul = true;
			global.playerMoney -= global.costWispSoul;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}