/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (global.selectedKeeperItem == KeeperBossItems.KeeperCloak)
{
	x = obj_bossLoot_keeperCloak.x;
	y = obj_bossLoot_keeperCloak.y-6;
}
if (global.selectedKeeperItem == KeeperBossItems.KeeperScythe)
{
	x = obj_bossLoot_keeperScythe.x;
	y = obj_bossLoot_keeperScythe.y-6;
}
if (global.selectedKeeperItem == KeeperBossItems.KeeperBatCarrier)
{
	x = obj_bossLoot_batJar.x;
	y = obj_bossLoot_batJar.y-6;
}
if (gameMaster.menu != Menues.BossLoot || global.selectedKeeperItem ==  KeeperBossItems.NoItem)
{
	instance_destroy();	
}