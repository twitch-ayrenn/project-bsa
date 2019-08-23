/// @description vars
////// vars
randomize();
class = Class.The_Assasin;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
////class system
if (class == Class.The_Assasin)
{
	hp = 95*(1 +(global.playerLevel/100))	
	if(global.assasinZombie){hp = hp*global.bloodJarHpBoost*global.poisonJarHpBoost}
	if(global.assasinMother){hp = hp*global.PurpleWispHpBoost;}
	if(global.assasinVampire){hp = hp*global.vampireCrownHpBoost;}
	if(global.assasinWitch){hp = hp*global.scarletsHpBoost*global.deathCapHpBoost;}
	if(global.assasinKeeper){hp = hp*global.batHpBoost*global.cloakHpBoost;}
	if(global.assasinInfernal){hp = hp*global.guardianHpReduction*global.speedAshHpBoost;}
	if(global.assasinGate){hp = hp*global.portalHpBoost*global.sacreficeHpReduction;}
	if(global.assasinWisp){hp = hp*global.lifeWispHpReduction*global.bookOfHealingHpCostReduction;}
	if(global.assasinGuards){hp = hp*global.devilsFeatherHpBoost*global.angelsFeatherHpBoost;}
	if(global.assasinGeneral){hp = hp}
	if(global.assasinQueen){hp = hp*global.queensHeadHealthBoost}
	if(global.assasinKing){hp = hp*global.kingsHeadHpBoost;}
	
	moveSpeed = 2;
	normalSpeed = moveSpeed;
	actualSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	global.damage = 2*(1 +(global.playerLevel/100));
	if(global.assasinZombie){global.damage = global.damage*global.bloodMaskDamageBoost*global.poisonJarDamageBoost}
	if(global.assasinMother){global.damage = global.damage*global.RedWispDamageBoost;}
	if(global.assasinVampire){global.damage = global.damage*global.vampireCloakDamageBoost*global.vampireNecklaceDamageBoost;}
	if(global.assasinWitch){global.damage = global.damage*global.eliseDamageBoost*global.deathCapDamageBoost;}
	if(global.assasinKeeper){global.damage = global.damage*global.scytheDamageBoost*global.batDamgeBoost*global.cloakDamageBoost;}
	if(global.assasinInfernal){global.damage = global.damage*global.guardianDamageReduction*global.flameConsumerDamageReduction*global.speedAshDamageBoost;}
	if(global.assasinGate){global.damage = global.damage*global.pheonixDamageBoost*global.portalDamageBoost*global.sacreficeDamageReduction;}
	if(global.assasinWisp){global.damage = global.damage*global.wispSoulDamageBoost*global.bookOfHealingDamageReduction}
	if(global.assasinGuards){global.damage = global.damage*global.devilsFeatherDamageBoost*global.soulSwordDamageBoost}
	if(global.assasinGeneral){global.damage = global.damage*global.bladeDamageBoost;}
	if(global.assasinQueen){global.damage = global.damage*global.queensHeadDamageBoost;}
	if(global.assasinKing){global.damage = global.damage*global.kingsHeadDamageBoost;}
	firerate = 40;
	firerate2 = 80; //resets teleportstrike and shots cirkle,
	idleSprite = spr_player_theAssasin;
	walkSprite = spr_player_theAssasin_walking;	
	instance_create_depth(x,y,1,obj_shadowAttackRange);
	instance_create_depth(x,y,1,obj_cursor);
	playerSize = 0.9;
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
itemPortalAmount = int64((1 + (maxHp/200))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
itemWispAmount = int64((1 + (global.damage/2))*global.portalSummoningBoost*global.wispSoulSummoningBoost)
global.lifeWispHpGained = 0;
//bosses
global.queenSlow = 0;
////states
state = States.Idle;
//new talking 
global.playerTextColor = c_purple;
text = choose("Guess Who's back!", "This Again","Reeeeee!","Hard day's killing ahead.");
var damageText = instance_create_depth(x-5,y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = text;
global.playerLine1 = "My blade is yours";
global.playerLine2 = "Reeeeee!";
global.playerLine3 = "Another one";
global.playerLine4 = "Over here dipshit!"
global.playerLine5 = "Not dead yet?"
global.playerLineToBoss = "Ready to die?"
if (gameMaster.chosenBoss == Bosses.Death_General_Zarodil) {global.playerLineToBoss = "Better killer wins!";}
if (gameMaster.chosenBoss == Bosses.Death_Queen_Zeria) {global.playerLineToBoss = "M'lady your time has come.";}
if (gameMaster.chosenBoss == Bosses.Death_King_Zarok) {global.playerLineToBoss = "Royal blood!";}
global.playerLineVictory = "Yikes that was fast"