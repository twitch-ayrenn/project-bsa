/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainFatZombiePhase3 == true)
	{
		if (global.hasBoughtBloodJar == true)
		{
			global.selectedZombieItem = ZombieItems.BloodJar;
			if (instance_exists(obj_selectedZombieArrow) == false){instance_create_depth(x,y,-1000,obj_selectedZombieArrow);}
		}
		if (global.hasBoughtBloodJar == false && global.playerMoney >= global.costBloodJar)
		{
			global.hasBoughtBloodJar = true;
			global.playerMoney -= global.costBloodJar;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}