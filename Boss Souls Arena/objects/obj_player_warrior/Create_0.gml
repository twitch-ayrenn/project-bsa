/// @description vars
////// vars
randomize();
class = Class.The_Warrior;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
////class system
if (class == Class.The_Warrior)
{
	hp = 130*(1 +(global.playerLevel/100));
	if(global.warriorZombie){hp = hp*global.bloodJarHpBoost*global.poisonJarHpBoost}
	if(global.warriorMother){hp = hp*global.PurpleWispHpBoost;}
	if(global.warriorVampire){hp = hp*global.vampireCrownHpBoost;}
	if(global.warriorWitch){hp = hp*global.scarletsHpBoost*global.deathCapHpBoost;}
	if(global.warriorKeeper){hp = hp*global.batHpBoost*global.cloakHpBoost;}
	if(global.warriorInfernal){hp = hp*global.guardianHpReduction*global.speedAshHpBoost;}
	if(global.warriorGate){hp = hp*global.portalHpBoost*global.sacreficeHpReduction;}
	if(global.warriorWisp){hp = hp*global.lifeWispHpReduction*global.bookOfHealingHpCostReduction;}
	if(global.warriorGuards){hp = hp*global.devilsFeatherHpBoost*global.angelsFeatherHpBoost;}
	if(global.warriorGeneral){hp = hp}
	if(global.warriorQueen){hp = hp*global.queensHeadHealthBoost}
	if(global.warriorKing){hp = hp*global.kingsHeadHpBoost;}
	moveSpeed = 3;
	normalSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	actualSpeed = moveSpeed;
	global.damage = 1.3*(1 +(global.playerLevel/100));
	if(global.warriorZombie){global.damage = global.damage*global.bloodMaskDamageBoost*global.poisonJarDamageBoost}
	if(global.warriorMother){global.damage = global.damage*global.RedWispDamageBoost;}
	if(global.warriorVampire){global.damage = global.damage*global.vampireCloakDamageBoost*global.vampireNecklaceDamageBoost;}
	if(global.warriorWitch){global.damage = global.damage*global.eliseDamageBoost*global.deathCapDamageBoost;}
	if(global.warriorKeeper){global.damage = global.damage*global.scytheDamageBoost*global.batDamgeBoost*global.cloakDamageBoost;}
	if(global.warriorInfernal){global.damage = global.damage*global.guardianDamageReduction*global.flameConsumerDamageReduction*global.speedAshDamageBoost;}
	if(global.warriorGate){global.damage = global.damage*global.pheonixDamageBoost*global.portalDamageBoost*global.sacreficeDamageReduction;}
	if(global.warriorWisp){global.damage = global.damage*global.wispSoulDamageBoost*global.bookOfHealingDamageReduction}
	if(global.warriorGuards){global.damage = global.damage*global.devilsFeatherDamageBoost*global.soulSwordDamageBoost}
	if(global.warriorGeneral){global.damage = global.damage*global.bladeDamageBoost;}
	if(global.warriorQueen){global.damage = global.damage*global.queensHeadDamageBoost;}
	if(global.warriorKing){global.damage = global.damage*global.kingsHeadDamageBoost;}
	firerate = 30;
	firerate2 = 60;
	idleSprite = spr_player_theWarrior;
	walkSprite = spr_player_theWarrior_walking;
	playerSize = 1.1;
	hasAxe = true;
	hasEnpowerdAxe = false;
	axeSpeed = 4;
	instance_create_depth(x,y,depth,obj_axeOnBack);
	instance_create_depth(x,y,1,obj_cursor_warrior);
}
maxHp = hp;
//new dash
canDash = true;
dashDirection = 0;
dashCooldown = (2.5);
//items
hpRegenAmount = 2*global.bookOfHealingHealBoost;
hpRegenStacks = 0;
hpRegenTime = (1)*30;
batSpeed = 0;
batSpeedActive = 0;
batStacks = 0;
ashStacks = 0;
ashSpeed = 0;
if (global.selectedInfernalItems == InfernalBossItems.Guardian_Wisp)
{
	global.hasGuardianWisp = true;	
}
if (global.selectedDeathLordItems == Artifacts.BladeOfPower)
{
	var speedDamage = (moveSpeed + global.sacreficeSpeedBoost + global.bladeSpeedFlatBoost)*1.4*0.5;	
	global.damage = global.damage + speedDamage;
}
itemPortalAmount = int64((1 + (maxHp/200))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
itemWispAmount = int64((1 + (global.damage/2))*global.portalSummoningBoost*global.wispSoulSummoningBoost)
global.lifeWispHpGained = 0;
//bosses
global.queenSlow = 0;
////states
state = States.Idle;
//new talking 
global.playerTextColor = c_ltgray;
text = choose("I will kill!","Face me monsters!:)","For the weak i fight!","Raaaah!:D");
var damageText = instance_create_depth(x-5,y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = text;
global.playerLine1 = "Try me";
global.playerLine2 = "Raaaah!";
global.playerLine3 = "Hold your horses";
global.playerLine4 = "You are the prey!"
global.playerLine5 = "Monster Scum!"
global.playerLineToBoss = "Meet your creator!"
if (gameMaster.chosenBoss == Bosses.Death_General_Zarodil) {global.playerLineToBoss = "A worthy opponent";}
if (gameMaster.chosenBoss == Bosses.Death_Queen_Zeria) {global.playerLineToBoss = "You are not a worthy ruler!";}
if (gameMaster.chosenBoss == Bosses.Death_King_Zarok) {global.playerLineToBoss = "Your time has come!";}
global.playerLineVictory = "Justice always wins!"