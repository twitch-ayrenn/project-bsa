/// @description vars
////// vars
randomize();
class = Class.The_Shopkeeper;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
enum WeaponMode
{
	Burst,
	LongShot,
	Spray,

}
////class system
if (class == Class.The_Shopkeeper)
{
	hp = 135*(1 +(global.playerLevel/100));
	if(global.shopZombie){hp = hp*global.bloodJarHpBoost*global.poisonJarHpBoost}
	if(global.shopMother){hp = hp*global.PurpleWispHpBoost;}
	if(global.shopVampire){hp = hp*global.vampireCrownHpBoost;}
	if(global.shopWitch){hp = hp*global.scarletsHpBoost*global.deathCapHpBoost;}
	if(global.shopKeeper){hp = hp*global.batHpBoost*global.cloakHpBoost;}
	if(global.shopInfernal){hp = hp*global.guardianHpReduction*global.speedAshHpBoost;}
	if(global.shopGate){hp = hp*global.portalHpBoost*global.sacreficeHpReduction;}
	if(global.shopWisp){hp = hp*global.lifeWispHpReduction*global.bookOfHealingHpCostReduction;}
	if(global.shopGuards){hp = hp*global.devilsFeatherHpBoost*global.angelsFeatherHpBoost;}
	if(global.shopGeneral){hp = hp}
	if(global.shopQueen){hp = hp*global.queensHeadHealthBoost}
	if(global.shopKing){hp = hp*global.kingsHeadHpBoost;}
	maxHp = hp;
	moveSpeed = 3;
	normalSpeed = moveSpeed;
	actualSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	global.damage = (maxHp/250)*(1 +(global.playerLevel/100));
	if(global.shopZombie){global.damage = global.damage*global.bloodMaskDamageBoost*global.poisonJarDamageBoost}
	if(global.shopMother){global.damage = global.damage*global.RedWispDamageBoost;}
	if(global.shopVampire){global.damage = global.damage*global.vampireCloakDamageBoost*global.vampireNecklaceDamageBoost;}
	if(global.shopWitch){global.damage = global.damage*global.eliseDamageBoost*global.deathCapDamageBoost;}
	if(global.shopKeeper){global.damage = global.damage*global.scytheDamageBoost*global.batDamgeBoost*global.cloakDamageBoost;}
	if(global.shopInfernal){global.damage = global.damage*global.guardianDamageReduction*global.flameConsumerDamageReduction*global.speedAshDamageBoost;}
	if(global.shopGate){global.damage = global.damage*global.pheonixDamageBoost*global.portalDamageBoost*global.sacreficeDamageReduction;}
	if(global.shopWisp){global.damage = global.damage*global.wispSoulDamageBoost*global.bookOfHealingDamageReduction}
	if(global.shopGuards){global.damage = global.damage*global.devilsFeatherDamageBoost*global.soulSwordDamageBoost}
	if(global.shopGeneral){global.damage = global.damage*global.bladeDamageBoost;}
	if(global.shopQueen){global.damage = global.damage*global.queensHeadDamageBoost;}
	if(global.shopKing){global.damage = global.damage*global.kingsHeadDamageBoost;}
	global.damage += 1;
	firerate = (0.75)*30;
	firerate2 = (9)*30;
	powerUpTime = (6)*30;
	idleSprite = spr_player_theShopkeeper;
	walkSprite = spr_player_theShopkeeper_walking;
	playerSize = 1 + (maxHp/1100);
	instance_create_depth(x,y,1,obj_cursor_shopkeeper);
	hpGained = 0;
	maxHpToBeGained = maxHp*0.2*global.bookOfHealingHealBoost;
	stack4 = false;
	stack5 = false;
	stack6 = false;
	global.shotsHit = 0;
}
maxHp = hp;
//new dash
canDash = true;
dashDirection = 0;
dashCooldown = (2.5);
//health regen
selfRegenAmount = (obj_player.maxHp*0.005)*global.bookOfHealingHealBoost;
selfRegenStacks = 0;
selfRegenTime = (0.9)*30;
//items
hpRegenAmount = (obj_player.maxHp*0.02)*global.bookOfHealingHealBoost;
hpRegenStacks = 0;
hpRegenTime = (1.1)*30;
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
global.playerTextColor = global.goldColor;
text = choose("Loot! Loot! Looooot!","Cant wait for the reward.","Maaaaney!","hurr Durr.");
var damageText = instance_create_depth(x-5,y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = text;
global.playerLine1 = "Give me your shit!";
global.playerLine2 = "My fat protects me!";
global.playerLine3 = "Ill shit on you!";
global.playerLine4 = "I want my reward!"
global.playerLine5 = "Hurr durr."
global.playerLineToBoss = "Your stuff will sell well."
if (gameMaster.chosenBoss == Bosses.The_Fat_Zombie) {global.playerLineToBoss = "What? Someone bigger than me!";}
global.playerLineVictory = "Money! Gold! Riches!"
