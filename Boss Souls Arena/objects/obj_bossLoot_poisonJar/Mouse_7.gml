/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainFatZombiePhase2 == true)
	{
		if (global.hasBoughtPoisonJar == true)
		{
			global.selectedZombieItem = ZombieItems.PoisonJar;
			if (instance_exists(obj_selectedZombieArrow) == false){instance_create_depth(x,y,-1000,obj_selectedZombieArrow);}
		}
		if (global.hasBoughtPoisonJar == false && global.playerMoney >= global.costPoisonJar)
		{
			global.hasBoughtPoisonJar = true;
			global.playerMoney -= global.costPoisonJar;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}