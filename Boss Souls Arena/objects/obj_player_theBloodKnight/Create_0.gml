/// @description vars
////// vars
randomize();
class = Class.The_BloodKnight;
canAttack = true;
canAttack2 = true;
canAttack2Again = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
enum Spells
{
	Bat_Shot,
	Blood_Ground,
	Blood_Portal,
	Bat_carrier,
}
////class system
if (class == Class.The_BloodKnight)
{
	hp = 135*(1 +(global.playerLevel/100));
	if(global.bloodZombie){hp = hp*global.bloodJarHpBoost*global.poisonJarHpBoost}
	if(global.bloodMother){hp = hp*global.PurpleWispHpBoost;}
	if(global.bloodVampire){hp = hp*global.vampireCrownHpBoost;}
	if(global.bloodWitch){hp = hp*global.scarletsHpBoost*global.deathCapHpBoost;}
	if(global.bloodKeeper){hp = hp*global.batHpBoost*global.cloakHpBoost;}
	if(global.bloodInfernal){hp = hp*global.guardianHpReduction*global.speedAshHpBoost;}
	if(global.bloodGate){hp = hp*global.portalHpBoost*global.sacreficeHpReduction;}
	if(global.bloodWisp){hp = hp*global.lifeWispHpReduction*global.bookOfHealingHpCostReduction;}
	if(global.bloodGuards){hp = hp*global.devilsFeatherHpBoost*global.angelsFeatherHpBoost;}
	if(global.bloodGeneral){hp = hp}
	if(global.bloodQueen){hp = hp*global.queensHeadHealthBoost}
	if(global.bloodKing){hp = hp*global.kingsHeadHpBoost;}
	maxHp = hp;
	moveSpeed = 2;
	normalSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	actualSpeed = moveSpeed;
	global.damage = 1.1*(1 +(global.playerLevel/100));
	if(global.bloodZombie){global.damage = global.damage*global.bloodMaskDamageBoost*global.poisonJarDamageBoost}
	if(global.bloodMother){global.damage = global.damage*global.RedWispDamageBoost;}
	if(global.bloodVampire){global.damage = global.damage*global.vampireCloakDamageBoost*global.vampireNecklaceDamageBoost;}
	if(global.bloodWitch){global.damage = global.damage*global.eliseDamageBoost*global.deathCapDamageBoost;}
	if(global.bloodKeeper){global.damage = global.damage*global.scytheDamageBoost*global.batDamgeBoost*global.cloakDamageBoost;}
	if(global.bloodInfernal){global.damage = global.damage*global.guardianDamageReduction*global.flameConsumerDamageReduction*global.speedAshDamageBoost;}
	if(global.bloodGate){global.damage = global.damage*global.pheonixDamageBoost*global.portalDamageBoost*global.sacreficeDamageReduction;}
	if(global.bloodWisp){global.damage = global.damage*global.wispSoulDamageBoost*global.bookOfHealingDamageReduction}
	if(global.bloodGuards){global.damage = global.damage*global.devilsFeatherDamageBoost*global.soulSwordDamageBoost}
	if(global.bloodGeneral){global.damage = global.damage*global.bladeDamageBoost;}
	if(global.bloodQueen){global.damage = global.damage*global.queensHeadDamageBoost;}
	if(global.bloodKing){global.damage = global.damage*global.kingsHeadDamageBoost;}
	firerate = (0.4)*30;
	firerate2 = (6)*30;
	idleSprite = spr_player_theBloodKnight;
	walkSprite = spr_player_theBloodKnight_walking;
	playerSize = 0.9;
	mode = Spells.Bat_Shot;
	global.batRange = maxHp/200;
	bloodSpeed = 0;
	bloodBatSpeed = 0;
	bloodBatSpeedActive = 0;
	bloodBatStacks = 0;
	bloodPortalAmount = int64((1 + int64(maxHp/100))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
	bloodGroundAmount = int64((1 + int64(global.damage*2))*global.portalSummoningBoost*global.wispSoulSummoningBoost);
	projectileSpeed = 5;
	batAttack = 1;
	instance_create_depth(x,y,1,obj_cursor_bloodKnight);
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
global.playerTextColor = make_color_rgb(255,1,0);
text = choose("Blood !Blood! Bloood!","Lets do this Ruby!","Death!","Skrr Skrr.");
var damageText = instance_create_depth(x-5,y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = text;
global.playerLine1 = "Give me Blood!";
global.playerLine2 = "Death Awaits you!";
global.playerLine3 = "i Choose you Ruby!";
global.playerLine4 = "Blood!";
global.playerLine5 = "Skrr skrr!";
global.playerLineToBoss = "Muhahahaha!"
if (gameMaster.chosenBoss == Bosses.The_GraveKeeper) {global.playerLineToBoss = "You lack blood! Sad.";}
if (gameMaster.chosenBoss == Bosses.Death_King_Zarok) {global.playerLineToBoss = "Even the vampires want you dead.";}
global.playerLineVictory = "Ashy they never had a chance."
