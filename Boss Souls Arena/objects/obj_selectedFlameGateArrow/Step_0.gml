/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Pheonixes)
{
	x = obj_bossLoot_bookOfPheonix.x;
	y = obj_bossLoot_bookOfPheonix.y-6;
}
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Portals)
{
	x = obj_bossLoot_bookOfPortals.x;
	y = obj_bossLoot_bookOfPortals.y-6;
}
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Sacrefices)
{
	x = obj_bossLoot_bookOfSacrefices.x;
	y = obj_bossLoot_bookOfSacrefices.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedFlameGateItems == FlameGateItems.NoItem)
{
	instance_destroy();	
}