/// @description Insert description here
// You can write your code in this editor
hp = (obj_player.maxHp*0.05 + global.damage*2)*
global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost*
global.portalSummoningBoost;
maxHp = hp;
cirkleShotAmount = 5 + int64((obj_player.maxHp/100)*global.scarletsProjectileBoost*global.vampireCloakProjectileBoost);
cirkleShot = true;
cirkleShotTime = (5)*30;
playerCurrentMaxHp = maxHp;
//visuals
size = 0.9 + maxHp*0.005;
image_xscale = size;
image_yscale = size;
// vars that are needed for player object
hpRegenAmount = 1;
hpRegenTime = 15;
moveSpeed = 2.5;
firerate = 10;
firerate2 = 5;
mode = 0;
class = 0;
itemPortalAmount = int64((1 + (maxHp/200))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
itemWispAmount = int64((1 + (global.damage/2))*global.portalSummoningBoost*global.wispSoulSummoningBoost) 
portalAmount = int64((2 + (maxHp/200) +(global.damage/2) )*global.portalSummoningBoost*global.wispSoulSummoningBoost);
ashStacks = 0;
ashSpeed = 0;
hasAxe = true;
hasEnpowerdAxe = false;
axeSpeed = 4;
bloodSpeed = 0;
bloodBatSpeed = 0;
bloodBatSpeedActive = 0;
bloodBatStacks = 0;
bloodPortalAmount = int64((1 + int64(maxHp/100))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
bloodGroundAmount = int64((1 + int64(global.damage*2))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
projectileSpeed = 5;
