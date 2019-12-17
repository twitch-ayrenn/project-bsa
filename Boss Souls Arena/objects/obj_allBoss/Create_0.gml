/// @description Vars
#region States
enum BossStates
{
	BeforeFight,
	Fighting,
	Dead,
	Tutorial,
}
state = BossStates.BeforeFight;
#endregion
#region Stats
phase1Hp = 0; phase1Ms = 0; phase1Dmg = 0;
phase2Hp = 0; phase2Ms = 0; phase2Dmg = 0;
phase3Hp = 0; phase3Ms = 0; phase3Dmg = 0;
phase4Hp = 0; phase4Ms = 0; phase4Dmg = 0;
phase5Hp = 0; phase5Ms = 0; phase5Dmg = 0;
phase6Hp = 0; phase6Ms = 0; phase6Dmg = 0;
tier1Hp = 400; tier2Hp = 700; tier3Hp = 1100;
tier4Hp = 1600; tier5Hp = 2100; tier6Hp = 2500;
hp = 0;
maxHp = hp;
global.bossDamage = 10;
moveSpeed = 0;
actualSpeed = moveSpeed;
normalMoveSpeed = moveSpeed;
startUpVars = true;
#endregion
#region Movement
enum MovementType
{
	WalkingTowards = 1,
	WalkingTowardsWDirection,
	WalkingAround,
	Snake,
	StandingStill,
}
moveType = 1;
pointX = choose(60,0,-60);
pointY = choose(60,-60);
#endregion
#region Phases
tier = 1;
phase = 1;
maxPhase = 2;
oneTimeVars = true;
#endregion
#region Attacks
chooseAnAttack = true;
enum Atks
{
	NormalShot,
	CircleAttack,
	GooSpawn,
	SummonTurret,
	TeleportAttack,
	ChangePosition,
	ConeAttack,
	OneShotAttack,
	ChaseAttack,
	BeamAttack,
	RapidFire,
	ZoneAttack,
	TauntAttack,
	HealAttack,
}
timeAfterIndicate = (3)*30;
attackCooldown = (6)*30;
attackColor = c_white;
drawArea = false;
rapidFireStacks = 0;
canRapidAttack = true;
spawnThingOnce = true;
position = 1;
dashSpeed = 0;
alarm5Timer = 0;
activateAlarm5 = false;
//DEBUFFS on player
global.playerBossSlow = 1;
#endregion
#region Visuals
size = 1;
image_xscale = size;
image_yscale = size;
alpha = 1;
idleSprite = 0;
normalSprite = 0;
oneShotSprite = 0;
circleSprite = 0;
summonSprite = 0;
chaseSprite = 0;
coneSprite = 0;
gooSprite = 0;
teleportSprite = 0;
beamSprite = 0;
rapidFireSprite = 0;
zoneSprite = 0;
tauntSprite = 0;
healSprite = 0;
isHit = false;
#endregion
#region Bosses
	#region Tier 1 Done
		#region BloodZombie
		if (gameMaster.chosenBoss == Boss.BloodZombie) 
		{
			//stats
			phase1Hp = tier1Hp*0.35; phase1Ms = 1; phase1Dmg = 10;
			phase2Hp = tier1Hp*0.55; phase2Ms = 1.5; phase2Dmg = 20;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.5;
			alpha = 1;
			idleSprite = spr_boss_bloodZombie_idle;
			normalSprite = spr_boss_bloodZombie_nA;
			circleSprite = spr_boss_bloodZombie_cir;
			gooSprite = spr_boss_bloodZombie_goo;
		}
		#endregion
		#region Wisp Sister Anna / Old Flame Wisp
		if (gameMaster.chosenBoss == Boss.FlameWisp) 
		{
			//stats
			phase1Hp = tier1Hp*0.6; phase1Ms = 1; phase1Dmg = 15;
			phase2Hp = tier1Hp*0.4; phase2Ms = 1.5; phase2Dmg = 25;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.5;
			alpha = 0.85;
			idleSprite = spr_boss_flameWisp_idle;
			coneSprite = spr_boss_flameWisp_coneAttack
			circleSprite = spr_boss_flameWisp_circle;
			oneShotSprite = spr_boss_flameWisp_oneShot;
			chaseSprite = spr_boss_flameWisp_chase;
		}
		#endregion
		#region TheCorrupter
		if (gameMaster.chosenBoss == Boss.TheCorrupter) 
		{
			//stats
			phase1Hp = tier1Hp*0.4; phase1Ms = 1.25; phase1Dmg = 25;
			phase2Hp = tier1Hp*0.6; phase2Ms = 1.75; phase2Dmg = 30;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1;
			alpha = 1;
			idleSprite = spr_boss_theCorrupter_idle;
			beamSprite = spr_boss_theCorrupter_beam;
			gooSprite = spr_boss_theCorrupter_goo;
			rapidFireSprite = spr_boss_theCorrupter_rapidFire;
		}
		#endregion
	#endregion
	#region Tier 2 Done
		#region The Mad witches
		if (gameMaster.chosenBoss == Boss.TheMadWitches) 
		{
			//stats
			phase1Hp = tier1Hp; phase1Ms = 2; phase1Dmg = 20;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 1;
			//visual
			size = 1;
			alpha = 1;
			beamSprite = spr_boss_theGreenWitch_beam;
			teleportSprite = spr_boss_theGreenWitch_teleport;
			rapidFireSprite = spr_boss_theGreenWitch_rapidFire;
			gooSprite = spr_boss_theGreenWitch_goo;
			//
			position = 1;
		}
		#endregion
		#region Wisp Sister Julia
		if (gameMaster.chosenBoss == Boss.WispSisterJulia) 
		{
			//stats
			phase1Hp = tier2Hp*0.20; phase1Ms = 1; phase1Dmg = 25;
			phase2Hp = tier2Hp*0.6; phase2Ms = 1.5; phase2Dmg = 27.5;
			phase3Hp = tier2Hp*0.375; phase3Ms = 2; phase3Dmg = 30;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 2;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.5;
			alpha = 0.85;
			idleSprite = spr_boss_wispSisterJulia_idle;
			circleSprite = spr_boss_wispSisterJulia_circle;
			gooSprite = spr_boss_wispSisterJulia_goo;
			teleportSprite = spr_boss_wispSisterJulia_teleport;
			rapidFireSprite = spr_boss_wispSisterJulia_rapidFire;
			chaseSprite = spr_boss_wispSisterJulia_chase;
		}
		#endregion
		#region Flame Gate
		if (gameMaster.chosenBoss == Boss.FlameGate) 
		{
			//stats
			phase1Hp = tier2Hp*0.9; phase1Ms = 0; phase1Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 2;
			phase = 1;
			maxPhase = 1;
			//visual
			size = 2;
			alpha = 1;
			idleSprite = spr_boss_demonGate_idle;
			rapidFireSprite = spr_boss_demonGate_rapidFire;
			gooSprite = spr_boss_demonGate_goo;
			oneShotSprite = spr_boss_demonGate_oneShot;
			coneSprite = spr_boss_demonGate_cone;
			
			x = global.arenaMiddleX;
			y = global.arenaMiddleY-140;
		}
		#endregion
		#region DeathKnight
		if (gameMaster.chosenBoss == Boss.DeathKnight) 
		{
			//stats
			phase1Hp = tier2Hp*0.15; phase1Ms = 1; phase1Dmg = 30;
			phase2Hp = tier2Hp*0.30; phase2Ms = 1; phase2Dmg = 30;
			phase3Hp = tier2Hp*0.40; phase3Ms = 1; phase3Dmg = 25;
			phase4Hp = tier2Hp*0.15; phase4Ms = 1; phase4Dmg = 27.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowardsWDirection;
			//attacks and phase
			tier = 2;
			phase = 1;
			maxPhase = 4;
			//visual
			size = 1;
			alpha = 0.85;
			idleSprite = spr_deathKinght_idle;
			normalSprite = spr_boss_deathKinght_normalAttack;
			chaseSprite = spr_boss_deathKinght_chase;
			teleportSprite = spr_boss_deathKinght_teleport;
			//boss Specfic
			var scythe = instance_create_depth(x,y,depth,obj_bossMeleeWeapon);
			scythe.sprite_index = spr_deathKnightScythe;
			dashSpeed = 6;
		}
		#endregion
	#endregion
	#region Tier 3
		#region Angel Slayer RekZul
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul) 
		{
			//stats
			phase1Hp = tier3Hp*0.125; phase1Ms = 1; phase1Dmg = 35;
			phase2Hp = tier3Hp*0.375; phase2Ms = 1.25; phase2Dmg = 40;
			phase3Hp = tier3Hp*0.5; phase3Ms = 1.5; phase3Dmg = 45;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.5;
			alpha = 1;
			idleSprite = spr_angelSlayerRekZul_idle;
			circleSprite = spr_angelSlayerRekZul_circle;
			beamSprite = spr_angelSlayerRekZul_beam;
			teleportSprite = spr_angelSlayerRekZul_teleport;
			zoneSprite = spr_angelSlayerRekZul_zone;
			chaseSprite = spr_angelSlayerRekZul_chase;
			//boss specifc
			alarm5Timer = (0.15)*30;
			xBeamSpawn = 0;
			beamsToSpawn = 0;
		}
		#endregion
		#region KnightWitch Yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi) 
		{
			//stats
			phase1Hp = tier3Hp*1; phase1Ms = 1.4; phase1Dmg = 40;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 1;
			//visual
			size = 1.35;
			alpha = 1;
			idleSprite = spr_boss_knightWitch_idle;
			circleSprite = spr_boss_knightWitch_circle;
			beamSprite = spr_boss_knightWitch_beam;
			gooSprite = spr_boss_knightWitch_goo;
			rapidFireSprite = spr_boss_knightWitch_rapidFire;
			tauntSprite = spr_boss_knightWitch_taunt;
			coneSprite = spr_boss_knightWitch_cone;
			//boss specifc
			knightWitchGooSize = 1;
		}
		#endregion
		#region AngelKnight
		if (gameMaster.chosenBoss == Boss.AngelKnightOscar) 
		{
			//stats
			phase1Hp = tier3Hp*0.20; phase1Ms = 1.2; phase1Dmg = 25;
			phase2Hp = tier3Hp*0.30; phase2Ms = 1.4; phase2Dmg = 30;
			phase3Hp = tier3Hp*0.5; phase3Ms = 1.4; phase3Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1;
			alpha = 1;
			idleSprite = spr_boss_angelKnightOscar_idle;
			circleSprite = spr_boss_angelKnightOscar_circle;
			beamSprite = spr_boss_angelKnightOscar_beam;
			coneSprite = spr_boss_angelKnightOscar_cone;
			rapidFireSprite = spr_boss_angelKnightOscar_rapidFire;
			healSprite = spr_boss_angelKnightOscar_heal;
			//boss specifc
		}
		#endregion
	#endregion
	#region Tier 4
	
	#endregion 
	#region Tier 5
		#region Varus
		if (gameMaster.chosenBoss == Boss.BloodKingVarus) 
		{
			//stats
			phase1Hp = tier5Hp*0.2; phase1Ms = 1; phase1Dmg = 20;
			phase2Hp = tier5Hp*0.8; phase2Ms = 1.5; phase2Dmg = 25;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 5;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1;
			alpha = 0.9;
			coneSprite = spr_boss_bloodRoyalVarus_cone;
			teleportSprite = spr_boss_bloodRoyalVarus_teleport;
			oneShotSprite = spr_boss_bloodRoyalVarus_oneShot;
			chaseSprite = spr_boss_bloodRoyalVarus_chase;	
		}
		#endregion
	#endregion
#endregion
#region Finalize
sprite_index = normalSprite;
actualSpeed = moveSpeed;
normalMoveSpeed = moveSpeed;
maxHp = hp;
normalAlpha = alpha;
image_xscale = size;
image_yscale = size;
if (tier == 1){ timeAfterIndicate = (2.5)*30;  attackCooldown = (5)*30;}
if (tier == 2){ timeAfterIndicate = (2)*30;  attackCooldown = (4.5)*30;}
if (tier == 3){ timeAfterIndicate = (1.75)*30;  attackCooldown = (4.25)*30;}
if (tier == 4){ timeAfterIndicate = (1.5)*30;  attackCooldown = (4)*30;}
if (tier == 5){ timeAfterIndicate = (1)*30;  attackCooldown = (3.75)*30;}
if (tier == 6){ timeAfterIndicate = (0.75)*30;  attackCooldown = (3.25)*30;}
#endregion




