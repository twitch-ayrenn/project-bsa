/// @description Insert description here
// all vars
hp = 100;
maxHp = 100;
phase = 1;
oneTimeVars = true;
size = 1.5;
damage = 10;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theFlameGate,Prioity.Normal,true);
}
//phase 1
phase1Hp = 500*(1 +(global.playerLevel/50))*global.dD;
phase1DoShot = true;
phase1ShotTime = (1)*30;
phase1DoDoubleShot = true;
phase1DoubleTime = (2)*30;
phase1DoTripleShot = true;
phase1TripleShotTime = (3)*30;
phase1Damage = (12 + obj_player.hp*0.024)*(1 +(global.playerLevel/50))*global.dD;
//phase 2
phase2Hp = 1000*(1 +(global.playerLevel/50))*global.dD;
phase2Damage = (15 + obj_player.hp*0.03)*(1 +(global.playerLevel/50))*global.dD;
//phase 3
phase3Hp = 1500*(1 +(global.playerLevel/75))*global.dD;
phase3SpawnPortals = true;
phase3SpawnPortalsTime = (5)*30;
phase3Damage = (18 + obj_player.hp*0.036)*(1 +(global.playerLevel/75))*global.dD;
//phase 4
phase4Hp = 2000*(1 +(global.playerLevel/75))*global.dD;
phase4DoOneShot = false;
phase4Damage = (15 + obj_player.hp*0.075)*(1 +(global.playerLevel/75))*global.dD;
//reward shit
global.theFlameGateReward = 0;
if (obj_player.class == Class.The_Assasin)
{
	phase1ShotTime = (1.25)*30
	phase1DoubleTime = (2.5)*30;
	phase1TripleShotTime = (3.75)*30;
	phase3SpawnPortalsTime = (6.5)*30;
}
