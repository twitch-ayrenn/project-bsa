/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainFatZombiePhase2 == true)
	{
		if (global.hasBoughtBloodMask == true)
		{
			global.selectedZombieItem = ZombieItems.BloodMask;
			if (instance_exists(obj_selectedZombieArrow) == false){instance_create_depth(x,y,-1000,obj_selectedZombieArrow);}
		}
		if (global.hasBoughtBloodMask == false && global.playerMoney >= global.costBloodMask)
		{
			global.hasBoughtBloodMask = true;
			global.playerMoney -= global.costBloodMask;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}