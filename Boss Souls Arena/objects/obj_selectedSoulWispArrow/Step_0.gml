/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedSoulWispItem == SoulWispItems.Life_Wisp)
{
	x = obj_bossLoot_lifeWisp.x;
	y = obj_bossLoot_lifeWisp.y-6;
}
if (global.selectedSoulWispItem == SoulWispItems.Wisp_Soul)
{
	x = obj_bossLoot_wispSoul.x;
	y = obj_bossLoot_wispSoul.y-6;
}
if (global.selectedSoulWispItem == SoulWispItems.Book_Of_Healing)
{
	x = obj_bossLoot_bookOfHealing.x;
	y = obj_bossLoot_bookOfHealing.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedSoulWispItem == SoulWispItems.NoItem)
{
	instance_destroy();	
}