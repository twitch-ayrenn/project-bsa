/// @description Insert description here
// You can write your code in this editor
global.dkiProjectileDamage = (15 + obj_player.hp*0.03)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
hp = 20000;
maxHp = 20000;
phase = 1;
oneTimeVars = true;
sizeX = 2;
sizeY = 2;
bossSize = 2;
oneTimeVars = true;
summon = true;
summonTime = (4)*30*global.dLAbilityNerf;
phase123SummonTime = (5)*30*global.dLAbilityNerf;
//phase 1
phase1Hp = 2500*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase1DoubleShot = true;
phase1DoubleShotTime = (2)*30*global.dLAbilityNerf;
//phase 2
phase2Hp = 3000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase2TripleShot = true;
phase2TripleShotTime = (2)*30*global.dLAbilityNerf;
//phase 3
phase3Hp = 4500*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase3CirkleShot = true;
phase3CirkleShotTime = (3)*30*global.dLAbilityNerf;
//phase 4
phase4Hp = 10000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase4CirkleShot = true;
phase4CirkleShotTime = (1.5)*30*global.dLAbilityNerf;
phase4SummonTime = (2)*30*global.dLAbilityNerf;
bossDeath = "For my slayer will die!"
bossTaunt = "You will die one way or another!";
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
