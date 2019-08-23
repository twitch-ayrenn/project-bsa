/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedWitchItem == WitchBossItems.AnniesDeathCap)
{
	x = obj_bossLoot_anniesDeathCap.x;
	y = obj_bossLoot_anniesDeathCap.y-6;
}
if (global.selectedWitchItem == WitchBossItems.EliseHead)
{
	x = obj_bossLoot_eliseHead.x;
	y = obj_bossLoot_eliseHead.y-6;
}
if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
{
	x = obj_bossLoot_scarletsPendant.x;
	y = obj_bossLoot_scarletsPendant.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedWitchItem == WitchBossItems.NoItem)
{
	instance_destroy();	
}