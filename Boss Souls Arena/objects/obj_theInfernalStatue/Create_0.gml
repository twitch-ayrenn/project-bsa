/// @description Insert description here
// You can write your code in this editor
summonedBoss = true;
rewardOnce = true;
global.wispAmount = 63;
global.tier1Size = 1.75;
global.tier2Size = 1.5;
global.tier3Size = 1.25;
global.tier4Size = 1;
global.tier5Size = 0.75;
global.tier6Size = 0.4;
global.tier1Hp = 1000*(1 +(global.playerLevel/50));
global.tier2Hp = 750*(1 +(global.playerLevel/50));
global.tier3Hp = 500*(1 +(global.playerLevel/50));
global.tier4Hp = 250*(1 +(global.playerLevel/50));
global.tier5Hp = 125*(1 +(global.playerLevel/50));
global.tier6Hp = 65*(1 +(global.playerLevel/50));
if (instance_exists(obj_player))
{
	global.teir1Damage = (20 + obj_player.hp*0.03)*(1 +(global.playerLevel/50))*global.dD;
	global.teir2Damage = (15 + obj_player.hp*0.02)*(1 +(global.playerLevel/50))*global.dD;
	global.teir3Damage = (12.5 + obj_player.hp*0.018)*(1 +(global.playerLevel/50))*global.dD;
	global.teir4Damage = (8 + obj_player.hp*0.012)*(1 +(global.playerLevel/75))*global.dD;
	global.teir5Damage = (6 + obj_player.hp*0.01)*(1 +(global.playerLevel/75))*global.dD;
	global.teir6Damage = (4 + obj_player.hp*0.006)*(1 +(global.playerLevel/75))*global.dD;
}
global.theInfernalWispReward = 0;