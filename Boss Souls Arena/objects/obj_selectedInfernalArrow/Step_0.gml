/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedInfernalItems == InfernalBossItems.Guardian_Wisp)
{
	x = obj_bossLoot_guardianWisp.x;
	y = obj_bossLoot_guardianWisp.y-6;
}
if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
{
	x = obj_bossLoot_flameConsumerWisp.x;
	y = obj_bossLoot_flameConsumerWisp.y-6;
}
if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
{
	x = obj_bossLoot_speedAsh.x;
	y = obj_bossLoot_speedAsh.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedInfernalItems ==  InfernalBossItems.NoItem)
{
	instance_destroy();	
}