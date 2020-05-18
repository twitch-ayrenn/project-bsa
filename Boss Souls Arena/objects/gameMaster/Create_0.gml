/// @description vars
////Menues
//saves
//dont use Save.dat, always use a new verisor//Save.dat.full0.3
//global.saveFile = "Save.alpha.0.65"; gaygang release
menu = 0;
global.saveFile = "Save.test.0.1";
//if (file_exists(global.saveFile) == true)
//{
//	game_load(global.saveFile);
//}
//if (file_exists(global.saveFile) == false)
//{
//	game_save(global.saveFile);
//}
room_goto(rm_beforeGame);
enum Menues
{
	BeforeGame = 0,
	Main = 1,
	PlayerSelect = 2,
	BossLoot = 3,
	Settings = 4,
	BossSelect = 5,
	Play = 6,
	Death = 7,
	BossSlain = 8,
	BossFailed = 9,
}
//menu = Menues.Main;
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

	DemonQueensHead,// 5
	DeathKing,
	SlimeQueen, 
	BloodKingVarus,
	VoidLordHeadless,
	
	ArenaKing,
	//canceld Bosses
	TheMadWitches,//4
	QueenSerpant,
	StoneSerpant,
	ShadowClan,
	FrostQueenFalak,//6
	LadyCorruption,
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
	Tutorial,
}
chosenClass = 0;
chosenBoss = 0;
global.player = obj_allPlayer;
//pricing
global.relase = false;
global.deBugg = true;
//save
//game balance
global.dD = 1;
//colors
global.orange = make_color_rgb(255,140,0);
global.goldColor = make_color_rgb(218,165,32);
global.purple = make_color_rgb(148,0,211);
global.lightBlue = make_color_rgb(135,206,250);
global.darkGreen = make_color_rgb(0,100,0);
global.paleViolet = make_color_rgb(138,43,226);
global.skyBlue = make_color_rgb(135,206,235);
global.darkYellow = make_color_rgb(180,180,0);
global.maroonOutline = make_color_rgb(90,0,0);
global.greenOutline = make_color_rgb(0,70,0);
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
//settings
global.musicOn = false;
global.musicVolume = 1;
global.soundOn = true;
global.ambientOn = false;
global.ShowInfo = false;
global.colorBlindIcons = false;
global.colorBlindText = false;
global.dashTowardsMove = false;
global.seeAbilitiesInGame = true;
global.showExtraItemInfo = false;
//tutorial
global.tutorial = false;
global.tutorialBoss = false;
global.tutorialPlayer = false;
//controlls
global.moveUpKey = ord("W");
global.moveDownKey = ord("S");
global.moveLeftKey = ord("A");
global.moveRightKey = ord("D");
global.basicAttackKey = mb_left;
global.abilityAttackKey = mb_right;
global.dashAttackKey = vk_space;
global.ultimateAttackKey = ord("E");
//
global.deBuggerInfo = false;
global.showDD = false;
global.showFps = false;
fpsShowTimerStacks = 0;
fpsShow = "";
fullscreen = true;
exitColor = c_maroon;
exitSize = 1;
backColor = c_maroon;
backSize = 1;
global.slidingSpeed = 1.75;
//Alpha 
deathAlpha = 0;
transitionAlpha = 0;
fightAlpha = 1;
fightTransitionAlpha = 0;
tutorialAlpha = 1;
queFight = false;
queLeave = false;
leaveTranistionAlpha = 0;
backToMenuAlpha = 0;
playerTutorialAlpha = 0;
quePlayerTutorial = false;
tutorialFadeOut = false;
checkOnce = true;
outline_init();
//Particles
enum Particles
{
	Healing_Small,
	
}
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
global.progressAmount = 1.5;
//Unlocks
assassinUnlocked = true;
bloodKnightUnlocked = true;
pyromancerUnlocked = true;
shopkeeperUnlocked = false;
theRedWarriorUnlocked = false;
plaugeWalkerUnlocked = true;
angelSlayerUnlocked = true;
rainbowSlimeUnlocked = false;
agentOfGodUnlocked = true;
gravelingUnlocked = true;
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
////stats
//deaths = 0;
//timeSeconds = 0; timeStacks = 0;
//Versions
if (global.deBugg == true)
{
	//Progression
	assassinProgress = 100;			bloodKnightProgress = 100;
	pyromancerProgress = 100;		plaugeWalkerProgress = 100;
	angelSlayerProgress = 100;		agentOfGodProgress = 100;		
	gravelingProgress = 100;
	//Unlocked
	assassinUnlocked = true;		bloodKnightUnlocked = true;
	pyromancerUnlocked = true;		plaugeWalkerUnlocked = true;
	angelSlayerUnlocked = true;		agentOfGodUnlocked = true;	
	gravelingUnlocked = true;
}
if (global.relase == true)
{
	//Progression
	assassinProgress = 1;			bloodKnightProgress = 1;
	pyromancerProgress = 1;			plaugeWalkerProgress = 1;
	angelSlayerProgress = 1;		agentOfGodProgress = 1;		
	gravelingProgress = 1;
	//Unlocked
	assassinUnlocked = true;		bloodKnightUnlocked = true;
	pyromancerUnlocked = false;		plaugeWalkerUnlocked = false;
	angelSlayerUnlocked = false;	agentOfGodUnlocked = false;		
	gravelingUnlocked = false;
}