/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedWispItem == WispBossItems.PurpleWispBottle)
{
	x = obj_bossLoot_prupleWisp.x;
	y = obj_bossLoot_prupleWisp.y-6;
}
if (global.selectedWispItem == WispBossItems.GreenWispBottle)
{
	x = obj_bossLoot_greenWisp.x;
	y = obj_bossLoot_greenWisp.y-6;
}
if (global.selectedWispItem == WispBossItems.RedWispBottle)
{
	x = obj_bossLoot_redWisp.x;
	y = obj_bossLoot_redWisp.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedWispItem == WispBossItems.NoItem)
{
	instance_destroy();	
}