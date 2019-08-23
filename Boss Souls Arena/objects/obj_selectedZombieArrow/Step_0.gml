/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedZombieItem == ZombieItems.BloodJar)
{
	x = obj_bossLoot_bloodJar.x;
	y = obj_bossLoot_bloodJar.y-6;
}
if (global.selectedZombieItem == ZombieItems.BloodMask)
{
	x = obj_bossLoot_bloodMask.x;
	y = obj_bossLoot_bloodMask.y-6;
}
if (global.selectedZombieItem == ZombieItems.PoisonJar)
{
	x = obj_bossLoot_poisonJar.x;
	y = obj_bossLoot_poisonJar.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedZombieItem == ZombieItems.NoItem)
{
	instance_destroy();	
}