/// @description vars
////// vars
randomize();
class = Class.The_Mage;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
////class system
if (class == Class.The_Mage)
{
	hp = 110*(1 +(global.playerLevel/100));
	if(global.mageZombie){hp = hp*global.bloodJarHpBoost*global.poisonJarHpBoost}
	if(global.mageMother){hp = hp*global.PurpleWispHpBoost;}
	if(global.mageVampire){hp = hp*global.vampireCrownHpBoost;}
	if(global.mageWitch){hp = hp*global.scarletsHpBoost*global.deathCapHpBoost;}
	if(global.mageKeeper){hp = hp*global.batHpBoost*global.cloakHpBoost;}
	if(global.mageInfernal){hp = hp*global.guardianHpReduction*global.speedAshHpBoost;}
	if(global.mageGate){hp = hp*global.portalHpBoost*global.sacreficeHpReduction;}
	if(global.mageWisp){hp = hp*global.lifeWispHpReduction*global.bookOfHealingHpCostReduction;}
	if(global.mageGuards){hp = hp*global.devilsFeatherHpBoost*global.angelsFeatherHpBoost;}
	if(global.mageGeneral){hp = hp}
	if(global.mageQueen){hp = hp*global.queensHeadHealthBoost}
	if(global.mageKing){hp = hp*global.kingsHeadHpBoost;}
	maxHp = hp;
	moveSpeed = 3;
	normalSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	actualSpeed = moveSpeed;
	global.damage = 1.1*(1 +(global.playerLevel/100));
	if(global.mageZombie){global.damage = global.damage*global.bloodMaskDamageBoost*global.poisonJarDamageBoost}
	if(global.mageMother){global.damage = global.damage*global.RedWispDamageBoost;}
	if(global.mageVampire){global.damage = global.damage*global.vampireCloakDamageBoost*global.vampireNecklaceDamageBoost;}
	if(global.mageWitch){global.damage = global.damage*global.eliseDamageBoost*global.deathCapDamageBoost;}
	if(global.mageKeeper){global.damage = global.damage*global.scytheDamageBoost*global.batDamgeBoost*global.cloakDamageBoost;}
	if(global.mageInfernal){global.damage = global.damage*global.guardianDamageReduction*global.flameConsumerDamageReduction*global.speedAshDamageBoost;}
	if(global.mageGate){global.damage = global.damage*global.pheonixDamageBoost*global.portalDamageBoost*global.sacreficeDamageReduction;}
	if(global.mageWisp){global.damage = global.damage*global.wispSoulDamageBoost*global.bookOfHealingDamageReduction}
	if(global.mageGuards){global.damage = global.damage*global.devilsFeatherDamageBoost*global.soulSwordDamageBoost}
	if(global.mageGeneral){global.damage = global.damage*global.bladeDamageBoost;}
	if(global.mageQueen){global.damage = global.damage*global.queensHeadDamageBoost;}
	if(global.mageKing){global.damage = global.damage*global.kingsHeadDamageBoost;}
	firerate = 12;
	firerate2 = 4;
	idleSprite = spr_player_theMage;
	walkSprite = spr_player_theMage_walking;
	portalAmount = int64((2 + (maxHp/200) +(global.damage/2) )*global.portalSummoningBoost*global.wispSoulSummoningBoost);
	instance_create_depth(x,y,depth,obj_ashy);
	instance_create_depth(x,y,1,obj_cursor_mage);
	playerSize = 0.9;
}
maxHp = hp;
//new dash
canDash = true;
dashDirection = 0;
dashCooldown = (1);
//items
hpRegenAmount = 2*global.bookOfHealingHealBoost;
hpRegenStacks = 0;
hpRegenTime = (1)*30;
batSpeed = 0;
batSpeedActive = 0;
batStacks = 0;
if (global.selectedInfernalItems == InfernalBossItems.Guardian_Wisp)
{
	global.hasGuardianWisp = true;	
}
ashStacks = 0;
ashSpeed = 0;
if (global.selectedDeathLordItems == Artifacts.BladeOfPower)
{
	var speedDamage = (moveSpeed + global.sacreficeSpeedBoost + global.bladeSpeedFlatBoost)*1.4*0.5;	
	global.damage = global.damage + speedDamage;
}
portalAmount = int64((2 + (maxHp/200) +(global.damage/2) )*global.portalSummoningBoost*global.wispSoulSummoningBoost);
itemPortalAmount = int64((1 + (maxHp/200))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
itemWispAmount = int64((1 + (global.damage/2))*global.portalSummoningBoost*global.wispSoulSummoningBoost)
global.lifeWispHpGained = 0;
//bosses
global.queenSlow = 0;
////states
state = States.Idle;
//new talking 
global.playerTextColor = global.orange;
text = choose("Burn something i will","Ashy lets finish this","Here we go Ashy","Hummmm?");
var damageText = instance_create_depth(x-5,y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = text;
global.playerLine1 = "Want some more fire?";
global.playerLine2 = "Hummmm?";
global.playerLine3 = "Not dead yet?";
global.playerLine4 = "Burn you will!"
global.playerLine5 = "I have the high ground!"
global.playerLineToBoss = "Meet your creator!"
if (gameMaster.chosenBoss == Bosses.The_Flame_Gate) {global.playerLineToBoss = "The order will fall!";}
if (gameMaster.chosenBoss == Bosses.The_Infernal_Wisp) {global.playerLineToBoss = "Your flames are weak!";}
global.playerLineVictory = "Another victroy!"