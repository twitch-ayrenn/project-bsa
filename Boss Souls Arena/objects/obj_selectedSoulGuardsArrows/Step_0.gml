/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedSoulGuardsItem == SoulGuardsItem.AngelsFeather)
{
	x = obj_bossLoot_angelsFeather.x;
	y = obj_bossLoot_angelsFeather.y-6;
}
if (global.selectedSoulGuardsItem == SoulGuardsItem.DevilsFeather)
{
	x = obj_bossLoot_devilsFeather.x;
	y = obj_bossLoot_devilsFeather.y-6;
}
if (global.selectedSoulGuardsItem == SoulGuardsItem.SoulSword)
{
	x = obj_bossLoot_soulSword.x;
	y = obj_bossLoot_soulSword.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedSoulGuardsItem == SoulGuardsItem.NoItem)
{
	instance_destroy();	
}