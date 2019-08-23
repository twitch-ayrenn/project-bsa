/// @description Insert description here
// You can write your code in this editor

if (global.selectedDeathLordItems == Artifacts.BladeOfPower)
{
	x = obj_bossLoot_bladeOfPower.x;
	y = obj_bossLoot_bladeOfPower.y-6;
}
if (global.selectedDeathLordItems == Artifacts.QueensHead)
{
	x = obj_bossLoot_queensHead.x;
	y = obj_bossLoot_queensHead.y-6;
}
if (global.selectedDeathLordItems == Artifacts.KingsHead)
{
	x = obj_bossLoot_kingsHead.x;
	y = obj_bossLoot_kingsHead.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedDeathLordItems == Artifacts.NoItem)
{
	instance_destroy();	
}