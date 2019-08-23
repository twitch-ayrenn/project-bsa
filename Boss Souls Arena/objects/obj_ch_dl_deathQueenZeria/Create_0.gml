/// @description Insert description here
// You can write your code in this editor
hp = 100;
maxHp = 100;
phase = 1;
oneTimeVars = true;
sizeX = 1.5;
sizeY = 1.5;
bossSize = 1.5;
oneTimeVars = true;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theFlameGate,Prioity.Normal,true);
}
summonSpectralHead = true;
summonSpectralHeadTime = (5)*30*global.dLAbilityNerf;
global.dqProjectileDamage = (12 + obj_player.hp*0.024)*(1 +(global.playerLevel/50))*global.dD*global.dlDamageNerf;
//phase 1
phase1Hp = 4000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
shoot = true;
shootTime = (2.5)*30*global.dLAbilityNerf;
doubleShoot = true;
doubleShootTime = (5)*30*global.dLAbilityNerf;
trippleShoot = true;
trippleShootTime = (7.5)*30*global.dLAbilityNerf;
//phase 2
phase2Hp = 4000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
oneShot = true;
global.oneShotDamage = 1;
oneShotTime = (10)*30*global.dLAbilityNerf;
//phase 3
phase3Hp = 4000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
cirkleShot = true;
cirkleShotTime = (7)*30*global.dLAbilityNerf;
//phase 4
phase4Hp = 8000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
bossDeath = "But my people? They need me!"
bossTaunt = "Nothing will stop me!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
