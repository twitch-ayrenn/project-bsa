/// @description Insert description here
// You can write your code in this editor
hp = 0;
phase1Hp = 750*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
generalSpeed = 1;
global.dkScytheDamage =  (10 + obj_player.hp*0.010)*(1 +(global.playerLevel/50))*global.dD;
global.dkProjectileAttacks = (50 + obj_player.hp*0.1)*(1 +(global.playerLevel/50))*global.dD;
phase = 1;
doAttacks = true;
oneTimeVars = true;
sizeX = 1.2;
sizeY = 1.2;
bossSize = 1.2;
chooseAnAttack = true;
minigunBullets = 0;
miniGunFirerate = (0.2)*30;
minigun = true;