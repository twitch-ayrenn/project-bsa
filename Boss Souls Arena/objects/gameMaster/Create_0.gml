/// @description vars
////Menues
//saves
//dont use Save.dat, always use a new verisor//Save.dat.full0.3
//Save.dat.Demo0.3
menu = 0;
global.saveFile = "Save.alpha.0.5";
//if (file_exists(global.saveFile) == true)
//{
//	game_load(global.saveFile);
//}
//if (file_exists(global.saveFile) == false)
//{
//	game_save(global.saveFile);
//}
enum Menues
{
	Main,
	PlayerSelect,
	BossLoot,
	Settings,
	BossSelect,
	Play,
	Death,
	BossSlain,
	BossFailed,
}
menu = Menues.Main;
enum Depths
{
	M_FightCards,
	M_BlackGround,
}
//play
enum Boss
{
	NoBoss = 0,
	
	BloodZombie = 1,//3
	FlameWisp, // this is new wisp sister anna
	TheCorrupter,

	FlameGate,//3
	WispSisterJulia,
	DeathKnight,
	
	AngelSlayerRekZul,//4
	KnightWitchYi,
	AngelKnightOscar,
	DemonLordRekTaar,
	
	Gravekeeper,//4
    BloodKnightDavid,
	StatueOfCorruption,
	WispSisters,

	FrostQueenFalak,//6
	DemonQueensHead,
	BloodKingVarus,
	SlimeKing, 
	DeathKing,
	VoidLordHeadless,
	
	LadyCorruption,
	//canceld Bosses
	TheMadWitches,//4
	QueenSerpant,
	StoneSerpant,
	ShadowClan,
	//Info
	Health = 400,
	Speed = 401,
	DashLength = 402,
	AttackSpeed = 403,
	Damage = 404,
	Lifesteal = 405,
	CDR = 406,
	SummoningPower = 407,
}
global.bossAmount = 25;
enum Character
{
	ShadowAssassin,
	BloodKnight,
	Pyromancer,
	Shopkeeper,
	TheRedWarrior,
	PlaugeWalker,
	AngelSlayer,
	RainbowSlime,
	AgentOfGod,
	Graveling,
	
}
enum Effect
{
	NoEffect,
	Star,
	Flare,
	Spark,
	Smoke,
}
enum States
{
	Idle,
	Walking,
	Dead,
	BeforeFight,
}
chosenClass = 0;
chosenBoss = 0;
timeToKill = 0;
global.player = obj_allPlayer;
global.arena = rm_arena;
//pricing
global.demo = false;
//save
//game balance
global.projectileHit = 0;//trash
global.dD = 1;
//colors
global.orange = make_color_rgb(255,140,0);
global.goldColor = make_color_rgb(218,165,32);
global.purple = make_color_rgb(148,0,211);
global.lightBlue = make_color_rgb(173,216,230);
global.paleRed = make_color_rgb(178,34,34);
global.yelloworange = make_color_rgb(255,165,0);
global.yellowGreen = make_color_rgb(154,205,50);
global.darkGreen = make_color_rgb(0,100,0);
global.teal = make_color_rgb(32,178,170);
global.steelBlue = make_color_rgb(70,130,180);
global.paleViolet = make_color_rgb(138,43,226);
global.slateGray = make_color_rgb(112,128,144);
global.skyBlue = make_color_rgb(135,206,235);
global.darkYellow = make_color_rgb(180,180,0);
//text vars
global.space = " ";
global.slash = "/";
//mainMenu text vars and settings
playColor = global.darkYellow;
playSize = 1;
playArenaColor = global.darkYellow;
playArenaSize = 1;
clearColor = c_maroon;
clearSize = 1;
fightColor = c_maroon;
fightSize = 1;
statsColor = c_yellow;
statsSize = 1;
settingsColor = global.darkYellow;
settingsSize = 1;
//controlls
global.musicOn = true;
global.soundOn = true;
global.ambientOn = true;
global.ShowInfo = false;
global.moveUpKey = ord("W");
global.moveDownKey = ord("S");
global.moveLeftKey = ord("A");
global.moveRightKey = ord("D");
global.basicAttackKey = mb_left;
global.abilityAttackKey = mb_right;
global.dashAttackKey = vk_space;
global.ultimateAttackKey = ord("E");
global.deBuggerInfo = true;
global.showDD = false;
global.showFps = false;
global.deBugg = false;
fpsShowTimerStacks = 0;
fpsShow = "";
fullscreen = true;
exitColor = c_maroon;
exitSize = 1;
backColor = c_maroon;
backSize = 1;
global.slidingSpeed = 1.75;
deathAlpha = 0;
transitionAlpha = 0;
fightAlpha = 1;
fightTransitionAlpha = 0;
queFight = false;
queLeave = false;
leaveTranistionAlpha = 0;
backToMenuAlpha = 0;
////Character progression and select
//Progress // for a boss its its number -1
assassinProgress = 1;
bloodKnightProgress = 1;
pyromancerProgress = 1;
shopkeeperProgress = 1;
theRedWarriorProgress = 1;
plaugeWalkerProgress = 1;
angelSlayerProgress = 1;
rainbowSlimeProgress = 1;
agentOfGodProgress = 1;
gravelingProgress = 1;
totalProgress = 0;
global.progressAmount = 1.35;
//Unlocks
assassinUnlocked = true;
bloodKnightUnlocked = true;
pyromancerUnlocked = true;
shopkeeperUnlocked = false;
theRedWarriorUnlocked = false;
plaugeWalkerUnlocked = false;
angelSlayerUnlocked = false;
rainbowSlimeUnlocked = false;
agentOfGodUnlocked = false;
gravelingUnlocked = false;
//Items
assassinItems[100] = false;
bloodKnightItems[100] = false;
pyromancerItems[100] = false;
shopkeeperItems[100] = false;
theRedWarriorItems[100] = false;
plaugeWalkerItems[100] = false;
angelSlayerItems[100] = false;
rainbowSlimeItems[100] = false;
agentOfGodItems[100] = false;
gravelingItems[100] = false;
global.itemSlots = 0;
global.maxItemSlots = 0;
global.itemSelected[100] = false;
global.slot1 = false;
global.slot2 = false;
global.slot3 = false;
global.slot4 = false;
global.slot5 = false;
global.slot6 = false;
itemShowInfoFor = Boss.NoBoss;
bonusHealth = 0;
bonusSpeed = 0;
bonusDash = 0;
bonusDamage = 0;
bonusFirerate = 0;
bonusLifeSteal = 0;
bonusAura = 0;
bonusConjur = 0;
global.conjurScaling = 15;
bonusCooldown = 0;
previewHealth = 0;
previewSpeed = 0;
previewDash = 0;
previewDamage = 0;
previewFirerate = 0;
previewLifeSteal = 0;
previewAura = 0;
previewConjur = 0;
previewCooldown = 0;
shoveInX = 0;// to shove in info text
itemTextSize = 0.075;
itemTextSeparationY = 22;
//arena
global.arenaMiddleX = 615;
global.arenaMiddleY = 600;
//talking stuff
global.playerLine1 = 0;
global.playerLine2 = 0;
global.playerLine3 = 0;
global.playerLine4 = 0;
global.playerLine5 = 0
global.playerTextColor = c_white;
////stats
deaths = 0;
timeSeconds = 0; timeStacks = 0;
//////game progress
global.dLAbilityNerf = 1.25;
global.dlHealthBuff = 1.25;
global.dlDamageNerf = 0.75;
////bosses slain
falseAllBosses = false;
//the graveyard
global.theFatZombieReward = 0;//50+50+900+4000
global.totalRewardZombie = 100;
global.hasSlainFatZombiePhase2 = true;
global.hasSlainFatZombiePhase3 = false;
global.theWispMotherReward = 0;//300; 50 + 50 + 50 + 150;
global.hasSlainTheWispMother = true;
global.totalRewardWispMother = 300;
global.theBloodPrinceReward = 0;//600; 100 + 100 + 400;
global.hasSlainTheBloodPrince = true;
global.totalRewardBloodPrince = 600;
global.theMadWitchesReward = 0;//800; 100 + 100 + 100 + 500;
global.hasSlainTheMadWitches = true;
global.totalRewardWitches = 800;
global.theGravekeeperReward = 0;//1000; 1000;
global.hasSlainTheGraveKeeper = true;
global.totalRewardKeeper = 1000;
//grave of flames
global.theInfernalWispReward = 0;//25 each + resterande summa
global.hasSlainTheInfernalWisp = true;
global.totalRewardInfernalWisp = 1400;//
global.theFlameGateReward = 0;
global.hasSlainTheFlameGate = true;
global.totalRewardFlameGate = 1400; // 200 + 200 + 200 + 800;
//Court of Souls
global.theSoulWispReward = 0; //350+ 350 + 350 + 1450
global.hasSlainTheSoulWisp = true;
global.totalRewardTheSoulWisp = 2500;
global.theSoulGuardsReward = 2500;//400+ 400 + 400 + 1300
global.hasSlainTheSoulGuards = true;
global.totalRewardTheSoulGuards = 2500;
//the Royal garden
global.deathGeneralZarodilReward = 0;
global.hasSlainDeathGeneralZarodil = true;
global.totalRewardDeathGeneralZarodil = 5000;
global.deathQueenZeriaReward = 0;
global.hasSlainDeathQueenZeria = true; 
global.totalRewardDeathQueenZeria = 5000;
global.deathKingZarokReward = 0;
global.hasSlainDeathKingZarok = true;
global.totalRewardDeathKingZarok = 5000;
//Trail of the Death Lords
global.hasSlainTheLords = true;
global.totalRewardLords = 15000;
global.lordsReward = 0;
////shop
//The Fat Zombie
global.costPoisonJar = 80;
global.hasBoughtPoisonJar = false;
global.costBloodMask = 40;
global.hasBoughtBloodMask = false;
global.costBloodJar = 8000;
global.hasBoughtBloodJar = false;
//The Wisp Mother
global.costRedWisp = 160;
global.hasBoughtRedWisp = false;
global.costGreenWisp = 400;
global.hasBoughtGreenWisp = false;
global.costPurpleWisp = 650;
global.hasBoughtPurpleWisp = false;
//the Blood Prince
global.costVampireCloak = 3500;
global.hasBoughtVampireCloak = false;
global.costVampireBloodNecklace = 800;
global.hasBoughtVampireBloodNecklace = false;
global.costVampireCrown = 400;
global.hasBoughtVampireCrown = false;
//the mad witches annie, scarlet and annie
global.costAnniesDeathCap = 3500;
global.hasBoughtAnniesDeathCap = false;
global.costEliseHead = 900;
global.hasBoughtEliseHead = false;
global.costScarletsPendant = 600;
global.hasBoughtScarletsPendant = false;
//the Gravekeeper
global.costScytheOfDeath = 6000;
global.hasBoughtScytheOfDeath = false;
global.costBatCarrier = 1000;
global.hasBoughtBatCarrier = false;
global.costCloakOfTheKeeper = 1250;
global.hasBoughtCloakOfTheKeeper = false;
//The Infernal Wisp
global.costGuardianWisp = 10000;
global.hasBoughtGuardianWisp = false;
global.costFlameConsumerWisp = 1750;
global.hasBoughtFlameConsumerWisp = false;
global.costSpeedAsh = 1250;
global.hasBoughtSpeedAsh = false;
//The Flame Gate
global.costPheonix = 1500;
global.hasBoughtPheonix = false;
global.costPortal = 5000;
global.hasBoughtPortal = false;
global.costSacrefices = 1500;
global.hasBoughtSacrefices = false;
//theSoulWisp
global.costLifeWisp = 2500;
global.hasBoughtLifeWisp = false;
global.costWispSoul = 7500;
global.hasBoughtWispSoul = false;
global.costBookOfHealing = 3000;
global.hasBoughtBookOfHealing = false;
//theSoulGuards
global.costDevilsFeather = 3500;
global.hasBoughtDevilsFeather = false;
global.costSoulSword = 3500;
global.hasBoughtSoulSword = false;
global.costAngelsFeather = 3500;
global.hasBoughtAngelsFeather = false;
//DeathGeneralZarodil
global.costBladeOfPower = 10000;
global.hasBoughtBladeOfPower = false;
//DeathQueenZeria
global.costQueensHead = 10000;
global.hasBoughtQueensHead = false;
//DeathKingZarok
global.costKingsHead = 10000;
global.hasBoughtKingHead = false;
///Trails
//Trail of the Fat Zombie I
//Trail of the Fat Zombie II
//Trail of Fire

//Trail of the Dead Army 
//Diffrent characters
///Hero Proggresion
global.classAll = true;
//assasin
global.assasinAll = false;		global.assasinZombie = false;
global.assasinMother = false;	global.assasinVampire = false; 
global.assasinWitch = false;	global.assasinKeeper = false; 
global.assasinInfernal = false;	global.assasinGate = false; 
global.assasinWisp = false;		global.assasinGuards = false;
global.assasinGeneral = false;	global.assasinQueen = false;
global.assasinKing = false;
//mage
global.mageAll = false;			global.mageZombie = false;
global.mageMother = false;		global.mageVampire = false;
global.mageWitch = false;		global.mageKeeper = false;
global.mageInfernal = false;	global.mageGate = false;
global.mageWisp = false;		global.mageGuards = false;
global.mageGeneral = false;		global.mageQueen = false;
global.mageKing = false;
//warrior
global.warriorAll = false;		global.warriorZombie = false;
global.warriorMother = false;	global.warriorVampire = false;
global.warriorWitch = false;	global.warriorKeeper = false;
global.warriorInfernal = false;	global.warriorGate= false;
global.warriorWisp = false;		global.warriorGuards = false;
global.warriorGeneral = false;	global.warriorQueen = false;
global.warriorKing = false;
//shopKeeper
global.shopAll = false;			global.shopZombie = false;
global.shopMother = false;		global.shopVampire = false;
global.shopWitch = false;		global.shopKeeper = false;
global.shopInfernal = false;	global.shopGate = false;
global.shopWisp = false;		global.shopGuards = false;
global.shopGeneral = false;		global.shopQueen = false;
global.shopKing = false;
//bloodKnight
global.bloodAll = false;		global.bloodZombie = false;
global.bloodMother = false;		global.bloodVampire = false;
global.bloodWitch = false;		global.bloodKeeper = false;
global.bloodInfernal = false;	global.bloodGate = false;
global.bloodWisp = false;		global.bloodGuards = false;
global.bloodGeneral = false;	global.bloodQueen = false;
global.bloodKing = false;
////Player
global.playerMoney = 0;
global.playerLevel = 0;
//allitems
enum Items
{
	NoItem,
	Z_PoisonJar,
	Z_BloodMask,
	Z_BloodJar,
	W_GreenWispBottle,
	W_RedWispBottle,
	W_PurpleWispBottle,
	V_VampireCrown,
	V_VampireCloak,
	V_VampireBloodNecklace,
	W_EliseHead,
	W_ScarletsPendant,
	W_AnniesDeathCap,
	K_KepperCloak,
	K_KeeperScythe,
	K_KeeperBatCarrier,
	I_GuardianWisp,
	I_FlameConsumer,
	I_SpeedAsh,
	FG_Pheonix,
	FG_Portals,
	FG_Sacrefices,
	SW_LifeWisp,
	SW_WispSoul,
	SW_BookOfHealing,
	SG_DevilsFeather,
	SG_SoulSword,
	SG_AngelsFeather,
	DL_BladeOfPower,
	DL_QueensHead,
	DL_KingsHead,
	
}
//the fat zombie 
enum ZombieItems
{
	NoItem,
	PoisonJar,
	BloodMask,
	BloodJar,
}
global.selectedZombieItem = 0;
global.poisonJarDamageBoost = 1;
global.poisonJarHpBoost = 1;
global.bloodMaskDamageBoost = 1;
global.bloodJarHpBoost = 1;
//The Wisp Mother
enum WispBossItems
{
	NoItem,
	GreenWispBottle,
	RedWispBottle,
	PurpleWispBottle,
}
global.selectedWispItem = 0;
global.GreenWispHpCostReduction = 1;//0.8;
global.PurpleWispHpBoost = 1;//1.2;
global.RedWispDamageBoost = 1;// 1.2;
global.redWispRangeBoost = 1;//1.3;
//The Blood Prince
enum VampireBossItems
{
	NoItem,
	VampireCrown,
	VampireCloak,
	VampireBloodNecklace,
}
global.selectedVampireItem = 0;
global.vampireCloakProjectileBoost = 1; //1.2;
global.vampireCloakDamageBoost = 1;//1.1;
global.vampireNecklaceDamageBoost = 1;//1.3;
global.vampireCrownHpBoost = 1;//1.2;
global.vampireCrownExtraOrb = 1;//1.2;
//the mad witches
enum WitchBossItems
{
	NoItem,
	EliseHead,
	ScarletsPendant,
	AnniesDeathCap,
}
global.selectedWitchItem = 0;
global.eliseDamageBoost = 1;//25%
global.scarletsHpBoost = 1;//25%
global.scarletsProjectileBoost = 1;//15%
global.deathCapHpBoost = 1;//10%
global.deathCapDamageBoost = 1;//10%
//The Gravekeeper
enum KeeperBossItems
{
	NoItem,
	KeeperCloak,
	KeeperScythe,
	KeeperBatCarrier,
}
global.selectedKeeperItem = 0;
global.scytheDamageBoost = 1;//1.2;
global.batDamgeBoost = 1;//1.1;
global.batHpBoost = 1;//1.15;
global.cloakDamageBoost = 1;//1.5;
global.cloakHpBoost = 1;//0.5;
//the Infernal Wisp
enum InfernalBossItems
{
	NoItem,
	Guardian_Wisp,
	Flame_Consumer_Wisp,
	Speed_Ash,
}
global.selectedInfernalItems = 0;
global.guardianHpReduction = 1;//0.7
global.guardianDamageReduction = 1;//0.7
global.hasGuardianWisp = false;
global.flameConsumerDamageReduction = 1;//0.9
global.speedAshDashIncrease = 1;//1.2
global.speedAshHpBoost = 1;//1.25
global.speedAshDamageBoost = 1;
//the Flame Gate
enum FlameGateItems
{
	NoItem,
	Book_Of_Pheonixes,
	Book_Of_Portals,
	Book_Of_Sacrefices,
}
global.selectedFlameGateItems = 0;
global.pheonixDamageBoost = 1;//1.35
global.portalDamageBoost = 1;//20%
global.portalHpBoost = 1;//10%
global.portalSummoningBoost = 1;//1.5;
global.sacreficeDamageReduction = 1;//0.85
global.sacreficeHpReduction = 1;//0.85
global.sacreficeSpeedBoost = 0;//1
//theSoulWisp
enum SoulWispItems
{
	NoItem,
	Life_Wisp,
	Wisp_Soul,
	Book_Of_Healing,
}
global.selectedSoulWispItem = 0;
global.lifeWispHpReduction = 1;//0.8;
global.lifeWispSizeBoost = 0;//0.01 per orb
global.lifeWispExtraOrb = 1;//1.2
global.lifeWispHpGained = 0;
global.wispSoulDamageBoost = 1;//1.35;
global.wispSoulSummoningBoost = 1;//1.25;
global.bookOfHealingHealBoost = 1;//1.2;
global.bookOfHealingHpCostReduction = 1;//0.8;
global.bookOfHealingDamageReduction = 1;//0.8;
global.bookOfHealingHpReduction = 1;//0.8;
//theSoulGuards
enum SoulGuardsItem
{
	NoItem,
	DevilsFeather,
	SoulSword,
	AngelsFeather,
}
global.selectedSoulGuardsItem = 0;
global.devilsFeatherDamageBoost = 1;//1.2
global.devilsFeatherHpBoost = 1;//1.35
global.soulSwordDamageBoost = 1;//1.35
global.soulSwordDashLength = 1;//1.25
global.angelsFeatherHpBoost = 1;//1.35
global.angelsFeatherRangeBoost = 1;//1.15;
//Artifacts 
enum Artifacts
{
	NoItem,
	BladeOfPower,
	KingsHead,
	QueensHead,
	LordGrave,
	ArmyGrave,
	FlameGrave,
	ZombieGrave,
}
global.selectedDeathLordItems = 0;
//DeathGeneralZarodil
global.bladeSpeedFlatBoost = 0;
global.bladeSpeedBoost = 1;
global.bladeDamageBoost = 1;
global.bladeSpeedDamage = 0;
//DeathQueenZeria
global.queensHeadHealthBoost = 1;//1.60;
global.queensHeadDamageBoost = 1;//1.3;
//DeathKingZarok
global.kingsHeadSummongingBoost = 1;//1.25
global.kingsHeadOrbBoost = 1;//1.25
global.kingsHeadDamageBoost = 1;//1.45
global.kingsHeadHpBoost = 1//1.45;
