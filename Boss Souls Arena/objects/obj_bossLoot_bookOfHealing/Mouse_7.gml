/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainTheSoulWisp == true)
	{
		if (global.hasBoughtBookOfHealing == true)
		{
			global.selectedSoulWispItem = SoulWispItems.Book_Of_Healing;
			if (instance_exists(obj_selectedSoulWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedSoulWispArrow);}
		}
		if (global.hasBoughtBookOfHealing == false && global.playerMoney >= global.costBookOfHealing)
		{
			global.hasBoughtBookOfHealing = true;
			global.playerMoney -= global.costBookOfHealing;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}