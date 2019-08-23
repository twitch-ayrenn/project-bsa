/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedVampireItem == VampireBossItems.VampireCrown)
{
	x = obj_bossLoot_crown.x;
	y = obj_bossLoot_crown.y-6;
}
if (global.selectedVampireItem == VampireBossItems.VampireCloak)
{
	x = obj_bossLoot_vampireCloak.x;
	y = obj_bossLoot_vampireCloak.y-6;
}
if (global.selectedVampireItem == VampireBossItems.VampireBloodNecklace)
{
	x = obj_bossLoot_vampireNecklace.x;
	y = obj_bossLoot_vampireNecklace.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedVampireItem == VampireBossItems.NoItem)
{
	instance_destroy();	
}