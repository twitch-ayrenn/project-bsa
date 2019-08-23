/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtBloodJar == false && spawnBuyButton == true && global.hasSlainFatZombiePhase3 == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedZombieItem == ZombieItems.BloodJar)
	{
		sprite_index = spr_bloodJar_outline_green;	
	}
	if (global.selectedZombieItem != ZombieItems.BloodJar)
	{
		sprite_index = spr_bloodJar_outline_red;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_bloodJar;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
