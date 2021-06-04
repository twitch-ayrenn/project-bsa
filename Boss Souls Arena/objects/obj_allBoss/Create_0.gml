/// @description Vars
bossTime = 0;
#region States
enum BossStates
{
	BeforeFight,
	Fighting,
	Dead,
	Tutorial,
}
state = BossStates.BeforeFight;
if (gameMaster.chosenMode == Menues.BossRush){state = BossStates.Fighting;}
#endregion
#region Stats
phase1Hp = 0; phase1Ms = 0; phase1Dmg = 0;
phase2Hp = 0; phase2Ms = 0; phase2Dmg = 0;
phase3Hp = 0; phase3Ms = 0; phase3Dmg = 0;
phase4Hp = 0; phase4Ms = 0; phase4Dmg = 0;
phase5Hp = 0; phase5Ms = 0; phase5Dmg = 0;
phase6Hp = 0; phase6Ms = 0; phase6Dmg = 0;
tier1Hp = 400; tier2Hp = 850; tier3Hp = 1200;
tier4Hp = 1900; tier5Hp = 2100; tier6Hp = 2400;
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
jump = false;
fall = false;
dealDamageOnFall = true;
targetX = 0;
targetY = 0;
#endregion
#region Phases
tier = 1;
phase = 1;
maxPhase = 2;
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
attackColor = c_dkgray;
drawArea = false;
rapidFireStacks = 0;
canRapidAttack = true;
spawnThingOnce = true;
dashSpeed = 0;
alarm5Timer = 0;
activateAlarm5 = false;
currentTimeBeforeTheAttack = 0;
timeBeforeTheAttack = (10)*60;
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
chaseSprite = 0;
coneSprite = 0;
gooSprite = 0;
teleportSprite = 0;
beamSprite = 0;
rapidFireSprite = 0;
zoneSprite = 0;
tauntSprite = 0;
healSprite = 0;
cdSprite = 0;
isHit = false;
#endregion
#region Bosses
	#region Tier 1 Done
		#region Target Dummy
		if (global.tutorial == true){gameMaster.chosenBoss = Boss.TargetDummy;}
		if (gameMaster.chosenBoss == Boss.TargetDummy) 
		{
			//stats
			phase1Hp = tier1Hp*0.05; phase1Ms = 1; phase1Dmg = 10;
			phase2Hp = tier1Hp*0.55; phase2Ms = 1.5; phase2Dmg = 20;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1;
			alpha = 1;
			idleSprite = spr_boss_targetDummy;
		}
		#endregion
		#region BloodZombie
		if (gameMaster.chosenBoss == Boss.BloodZombie) 
		{
			//stats
			phase1Hp = tier1Hp*0.35; phase1Ms = 1; phase1Dmg = 12.5;
			phase2Hp = tier1Hp*0.65; phase2Ms = 1.25; phase2Dmg = 20;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.6;
			alpha = 1;
			idleSprite = spr_boss_bloodZombie_idle;
			normalSprite = spr_boss_bloodZombie_nA;
			circleSprite = spr_boss_bloodZombie_cir;
			gooSprite = spr_boss_bloodZombie_goo;
			cdSprite = spr_boss_bloodZombie_cd;
		}
		#endregion
		#region Wisp Sister Anna / Old Flame Wisp
		if (gameMaster.chosenBoss == Boss.FlameWisp) 
		{
			//stats
			phase1Hp = tier1Hp*0.45; phase1Ms = 1; phase1Dmg = 15;
			phase2Hp = tier1Hp*0.55; phase2Ms = 1.5; phase2Dmg = 25;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 1;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.6;
			alpha = 0.85;
			idleSprite = spr_boss_flameWisp_idle;
			coneSprite = spr_boss_flameWisp_cone;
			circleSprite = spr_boss_flameWisp_circleAttack;
			oneShotSprite = spr_boss_flameWisp_oneShot;
			chaseSprite = spr_boss_flameWisp_chaseAttack;
			cdSprite = spr_boss_flameWisp_cd;
		}
		#endregion
		#region TheCorrupter
		if (gameMaster.chosenBoss == Boss.TheCorrupter) 
		{
			//stats
			phase1Hp = tier1Hp*0.4; phase1Ms = 1.15; phase1Dmg = 25;
			phase2Hp = tier1Hp*0.6; phase2Ms = 1.25; phase2Dmg = 30;
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
			cdSprite = spr_boss_theCorrupter_cd;
		}
		#endregion
	#endregion
	#region Tier 2 Done
		#region Wisp Sister Julia
		if (gameMaster.chosenBoss == Boss.WispSisterJulia) 
		{
			//stats
			phase1Hp = tier2Hp*0.35; phase1Ms = 1.2; phase1Dmg = 25;
			phase2Hp = tier2Hp*0.50; phase2Ms = 1.4; phase2Dmg = 27.5;
			phase3Hp = tier2Hp*0.15; phase3Ms = 1; phase3Dmg = 27.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 2;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.6;
			alpha = 0.85;
			idleSprite = spr_boss_wispSisterJulia_idle;
			circleSprite = spr_boss_wispSisterJulia_circle;
			gooSprite = spr_boss_wispSisterJulia_goo;
			teleportSprite = spr_boss_wispSisterJulia_teleport;
			rapidFireSprite = spr_boss_wispSisterJulia_rapidFire;
			chaseSprite = spr_boss_wispSisterJulia_chase;
			cdSprite = spr_boss_wispSisterJulia_cd;
		}
		#endregion
		#region Eye Of Hell
		if (gameMaster.chosenBoss == Boss.FlameGate) 
		{
			//stats
			phase1Hp = tier2Hp*0.30; phase1Ms = 0; phase1Dmg = 25;
			phase2Hp = tier2Hp*0.70; phase2Ms = 0; phase2Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 2;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.9;
			alpha = 1;
			idleSprite = spr_boss_demonGate_idle;
			rapidFireSprite = spr_boss_demonGate_rapidFire;
			gooSprite = spr_boss_demonGate_goo;
			oneShotSprite = spr_boss_demonGate_oneShot;
			coneSprite = spr_boss_demonGate_cone;
			cdSprite = spr_boss_demonGate_cd;
			
			x = global.arenaMiddleX;
			y = global.arenaMiddleY-140;
		}
		#endregion
		#region DeathKnight
		if (gameMaster.chosenBoss == Boss.DeathKnight) 
		{
			//stats
			phase1Hp = tier2Hp*0.020; phase1Ms = 1.3; phase1Dmg = 30;
			phase2Hp = tier2Hp*0.030; phase2Ms = 1.2; phase2Dmg = 30;
			phase3Hp = tier2Hp*0.0425; phase3Ms = 1.1; phase3Dmg = 25;
			phase4Hp = tier2Hp*0.0075; phase4Ms = 1; phase4Dmg = 27.5;
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
			cdSprite = spr_boss_deathKinght_cd;
			//boss Specfic
			var scythe = instance_create_depth(x,y,depth,obj_bossMeleeWeapon);
			scythe.sprite_index = spr_deathKnightScythe;
			dashSpeed = 6;
		}
		#endregion
	#endregion
	#region Tier 3 Done
		#region Angel Slayer RekZul
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul) 
		{
			//stats
			phase1Hp = tier3Hp*0.2; phase1Ms = 1; phase1Dmg = 37;
			phase2Hp = tier3Hp*0.3; phase2Ms = 1.1; phase2Dmg = 40;
			phase3Hp = tier3Hp*0.5; phase3Ms = 1.2; phase3Dmg = 42.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.65;
			alpha = 1;
			idleSprite = spr_angelSlayerRekZul_idle;
			circleSprite = spr_angelSlayerRekZul_circle;
			beamSprite = spr_angelSlayerRekZul_beam;
			teleportSprite = spr_angelSlayerRekZul_teleport;
			zoneSprite = spr_angelSlayerRekZul_zone;
			chaseSprite = spr_angelSlayerRekZul_chase;
			cdSprite = spr_angelSlayerRekZul_cd;
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
			phase1Hp = tier3Hp*0.35; phase1Ms = 0.6; phase1Dmg = 25;
			phase2Hp = tier3Hp*0.5; phase2Ms = 0.7; phase2Dmg = 27.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 2;
			//visual
			size = 1.45;
			alpha = 1;
			idleSprite = spr_boss_knightWitch_idle;
			circleSprite = spr_boss_knightWitch_circle;
			beamSprite = spr_boss_knightWitch_beam;
			gooSprite = spr_boss_knightWitch_goo;
			rapidFireSprite = spr_boss_knightWitch_rapidFire;
			tauntSprite = spr_boss_knightWitch_taunt;
			coneSprite = spr_boss_knightWitch_cone;
			cdSprite = spr_boss_knightWitch_cd;
			//boss specifc
			knightWitchGooSize = 0.05;
		}
		#endregion
		#region AngelKnight
		if (gameMaster.chosenBoss == Boss.AngelKnightOscar) 
		{
			//stats
			phase1Hp = tier3Hp*0.20; phase1Ms = 0.9; phase1Dmg = 25;
			phase2Hp = tier3Hp*0.35; phase2Ms = 1.0; phase2Dmg = 30;
			phase3Hp = tier3Hp*0.45; phase3Ms = 1.1; phase3Dmg = 32.5;
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
			idleSprite = spr_boss_angelKnight_idle;
			circleSprite = spr_boss_angelKnight_circle;
			beamSprite = spr_boss_angelKnight_beam;
			coneSprite = spr_boss_angelKnight_cone;
			rapidFireSprite = spr_boss_angelKnight_rapidFire;
			cdSprite = spr_boss_angelKnight_cd;
			//boss specifc
		}
		#endregion
		#region Demon General Rektaar
		if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
		{
			//stats
			phase1Hp = tier3Hp*0.55; phase1Ms = 0; phase1Dmg = 25;
			phase2Hp = tier3Hp*0.25; phase2Ms = 0; phase2Dmg = 30;
			phase3Hp = tier3Hp*0.20; phase3Ms = 0; phase3Dmg = 32.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.3;
			alpha = 1;
			idleSprite = spr_boss_demonGeneral_idle;
			beamSprite = spr_boss_demonGeneral_beam;
			oneShotSprite = spr_boss_demonGeneral_oneShot;
			gooSprite = spr_boss_demonGeneral_goo;
			rapidFireSprite = spr_boss_demonGeneral_rapidFire;
			cdSprite = spr_boss_demonGeneral_cd;
			//Specific
			x = global.arenaMiddleX;
			y = global.arenaMiddleY;
			rotation1 = 0;
			rotation2 = 0;
			rotation3 = 0;
		}
		#endregion
		#region Headless
		if (gameMaster.chosenBoss == Boss.Headless) 
		{
			//stats
			phase1Hp = tier3Hp*0.25; phase1Ms = 0.3; phase1Dmg = 30;
			phase2Hp = tier3Hp*0.3; phase2Ms = 0.3; phase2Dmg = 32.5;
			phase3Hp = tier3Hp*0.45; phase3Ms = 0.3; phase3Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 3;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 2;
			alpha = 1;
			idleSprite = spr_boss_headless_idle;
			circleSprite = spr_boss_headless_circle;
			gooSprite = spr_boss_headless_goo;
			coneSprite = spr_boss_headless_cone;
			oneShotSprite = spr_boss_headless_oneshot;
			teleportSprite = spr_boss_headless_teleport;
			cdSprite = spr_boss_headless_cd;
			//boss specifc
			headlessRange = 2*30;
			headlessProjectileSpeed = 5;
		}
		#endregion
	#endregion
	#region Tier 4 Done
		#region Gravekeeper
		if (gameMaster.chosenBoss == Boss.Gravekeeper) 
		{
			//stats
			phase1Hp = tier4Hp*0.25; phase1Ms = 0.8; phase1Dmg = 80;
			phase2Hp = tier4Hp*0.30; phase2Ms = 1; phase2Dmg = 35;
			phase3Hp = tier4Hp*0.45; phase3Ms = 0.8; phase3Dmg = 30;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowardsWDirection;
			//attacks and phase
			tier = 4;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1.6;
			alpha = 0.75;
			idleSprite = spr_boss_theGraveKeeper_idle;
			oneShotSprite = spr_boss_theGraveKeeper_oneShot;
			coneSprite = spr_boss_theGraveKeeper_cone;
			rapidFireSprite = spr_boss_theGraveKeeper_rapidFire;
			healSprite = spr_boss_theGraveKeeper_heal;
			chaseSprite = spr_boss_theGraveKeeper_chase;
			normalSprite = spr_boss_theGraveKeeper_normal;
			cdSprite = spr_boss_theGraveKeeper_cd;
			//boss Specfic
			x = global.arenaMiddleX;
			y = global.arenaMiddleY;
			var scythe = instance_create_depth(x,y,depth,obj_bossMeleeWeapon);
			scythe.sprite_index = spr_graveScythe_spin;
			scythe.image_xscale = 1.5;
			scythe.image_yscale = 1.5;
			scythe.spinSpeed = 20;
			dashSpeed = 4;
			healingAmount = 1;
			instance_create_depth(global.arenaMiddleX-125,global.arenaMiddleY-125,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-125,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX+125,global.arenaMiddleY-125,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX-125,global.arenaMiddleY,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX+125,global.arenaMiddleY,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX-125,global.arenaMiddleY+125,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX,global.arenaMiddleY+125,-9,obj_teleportMarker);
			instance_create_depth(global.arenaMiddleX+125,global.arenaMiddleY+125,-9,obj_teleportMarker);
		}
		#endregion
		#region Bloodarmy General
		if (gameMaster.chosenBoss == Boss.BloodKnightDavid) 
		{
			//stats
			phase1Hp = tier4Hp*0.2; phase1Ms = 0.8; phase1Dmg = 18;
			phase2Hp = tier4Hp*0.25; phase2Ms = 0.9; phase2Dmg = 19;
			phase3Hp = tier4Hp*0.45; phase3Ms = 1; phase3Dmg = 20;
			phase4Hp = tier4Hp*0.10; phase4Ms = 0; phase4Dmg = 30;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 4;
			phase = 1;
			maxPhase = 4;
			//visual
			size = 2;
			alpha = 1;
			idleSprite = spr_boss_bloodArmyGeneral_idle;
			oneShotSprite = spr_boss_bloodArmyGeneral_oneShot;
			coneSprite = spr_boss_bloodArmyGeneral_cone;
			rapidFireSprite = spr_boss_bloodArmyGeneral_rapidfire;
			chaseSprite = spr_boss_bloodArmyGeneral_chase;
			gooSprite = spr_boss_bloodArmyGeneral_goo;
			teleportSprite = spr_boss_bloodArmyGeneral_teleport;
			cdSprite = spr_boss_bloodArmyGeneral_cd;
			//boss Specfic
			var spinBeam = instance_create_depth(x,y,depth+1,obj_spinBeam);
			spinBeam.image_blend = c_red;
		}
		#endregion
		#region Statue Of Corruption
		if (gameMaster.chosenBoss == Boss.StatueOfCorruption) 
		{
			//stats
			phase1Hp = tier4Hp*0.15; phase1Ms = 0; phase1Dmg = 30;
			phase2Hp = tier4Hp*0.35; phase2Ms = 0; phase2Dmg = 30;
			phase3Hp = tier4Hp*0.5; phase3Ms = 0; phase3Dmg = 30;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.StandingStill;
			//attacks and phase
			tier = 4;
			phase = 1;
			maxPhase = 3;
			//visual
			size = 1;
			alpha = 1;
			idleSprite = spr_boss_statueOfCorruption_idle;
			coneSprite = spr_boss_statueOfCorruption_cone;
			rapidFireSprite = spr_boss_statueOfCorruption_rapidFire;
			chaseSprite = spr_boss_statueOfCorruption_chase;
			circleSprite = spr_boss_statueOfCorruption_circle;
			beamSprite = spr_boss_statueOfCorruption_beam;
			cdSprite = spr_boss_statueOfCorruption_cd;
			//boss Specfic
			x = global.arenaMiddleX;
			y = global.arenaMiddleY;
			#region Goo around the Arena
			//1
			var gooGround = instance_create_depth(global.arenaMiddleX+225,global.arenaMiddleY,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//2
			var gooGround = instance_create_depth(global.arenaMiddleX+190,global.arenaMiddleY+100,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//3
			var gooGround = instance_create_depth(global.arenaMiddleX+190,global.arenaMiddleY-100,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//4
			var gooGround = instance_create_depth(global.arenaMiddleX-190,global.arenaMiddleY+100,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//5
			var gooGround = instance_create_depth(global.arenaMiddleX-190,global.arenaMiddleY-100,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//6
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-180,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//7
			var gooGround = instance_create_depth(global.arenaMiddleX+100,global.arenaMiddleY-160,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//8
			var gooGround = instance_create_depth(global.arenaMiddleX-100,global.arenaMiddleY-160,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//9
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY+180,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//10
			var gooGround = instance_create_depth(global.arenaMiddleX+100,global.arenaMiddleY+160,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			//11
			var gooGround = instance_create_depth(global.arenaMiddleX-100,global.arenaMiddleY+160,-5,obj_enemyProjectile);
			gooGround.image_blend = c_purple; gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.34; gooGround.image_yscale = 0.34; 
			gooGround.destroy = false; gooGround.effectType = Effect.NoEffect;
			#endregion
		}
		#endregion
		#region Wisp Sister Jana
		if (gameMaster.chosenBoss == Boss.WispSisters) 
		{
			//stats
			phase1Hp = tier4Hp*0.25; phase1Ms = 1; phase1Dmg = 40;
			phase2Hp = tier4Hp*0.25; phase2Ms = 1.25; phase2Dmg = 40;
			phase3Hp = tier4Hp*0.50; phase3Ms = 1.5; phase3Dmg = 40;
			phase4Hp = tier4Hp*0.15; phase4Ms = 1; phase4Dmg = 25;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 4;
			phase = 1;
			maxPhase = 4;
			//visual
			size = 1.7;
			alpha = 0.85;
			#region Wisp Sister Sprites
			janaPhase1Circle = spr_boss_flameWisp_circleAttack;
			janaPhase1Cone = spr_boss_flameWisp_cone;
			janaPhase1OneShot = spr_boss_flameWisp_oneShot;
			janaPhase1Cd = spr_boss_flameWisp_cd;
			
			janaPhase2Circle = spr_boss_wispSisterJulia_circle;
			janaPhase2Chase = spr_boss_wispSisterJulia_chase;
			janaPhase2Teleport = spr_boss_wispSisterJulia_teleport;
			janaPhase2Goo = spr_boss_wispSisterJulia_goo;
			janaPhase2Cd = spr_boss_wispSisterJulia_cd;
			
			janaPhase3Circle = spr_boss_jana_circle;
			janaPhase3Cone = spr_boss_jana_cone;
			janaPhase3OneShot = spr_boss_jana_oneShot;
			janaPhase3Chase = spr_boss_jana_chase;
			janaPhase3Teleport = spr_boss_jana_teleport;
			janaPhase3Goo = spr_boss_jana_goo;
			janaPhase3Cd = spr_boss_jana_cd;
			
			rapidFireSprite = spr_boss_jana_rapidFire;
			#endregion
			idleSprite = spr_boss_jana_idle;
			circleSprite = janaPhase1Circle;
			coneSprite = janaPhase1Cone;
			oneShotSprite = janaPhase1OneShot;
			gooSprite = janaPhase2Goo;
			teleportSprite = janaPhase2Teleport;
			chaseSprite = janaPhase2Chase;
			rapidFireSprite = rapidFireSprite;
			cdSprite = janaPhase1Cd;
			
		}
		#endregion
	#endregion 
	#region Tier 5 Done
		#region Faith Destroyer
		if (gameMaster.chosenBoss == Boss.FaithDestroyer) 
		{
			//stats
			phase1Hp = tier5Hp*0.10; phase1Ms = 0; phase1Dmg = 30;
			phase2Hp = tier5Hp*0.20; phase2Ms = 0; phase2Dmg = 35;
			phase3Hp = tier5Hp*0.25; phase3Ms = 0; phase3Dmg = 40;
			phase4Hp = tier5Hp*0.25; phase4Ms = 0; phase4Dmg = 40;
			phase5Hp = tier5Hp*0.45; phase5Ms = 0; phase5Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 5;
			phase = 1;
			maxPhase = 5;
			//visual
			size = 1;
			alpha = 1;
			idleSprite = spr_boss_faithDestroyer_idle;
			oneShotSprite = spr_boss_faithDestroyer_oneshot;
			chaseSprite = spr_boss_faithDestroyer_chase;
			beamSprite = spr_boss_faithDestroyer_beam;
			zoneSprite = spr_boss_faithDestroyer_zone;
			coneSprite = spr_boss_faithDestroyer_cone;
			teleportSprite = spr_boss_faithDestroyer_teleport;
			circleSprite = spr_boss_faithDestroyer_circle;
			cdSprite = spr_boss_faithDestroyer_cd;
			//boss Specfic
			x = global.arenaMiddleX;
			y = global.arenaMiddleY + 100;
			faithBeamSize = 4;
		}
		#endregion
		#region Demon Queens Head
		if (gameMaster.chosenBoss == Boss.DemonQueensHead) 
		{
			//stats
			phase1Hp = tier5Hp*0.15; phase1Ms = 0.7; phase1Dmg = 22;
			phase2Hp = tier5Hp*0.20; phase2Ms = 0.7; phase2Dmg = 23;
			phase3Hp = tier5Hp*0.25; phase3Ms = 0.7; phase3Dmg = 24;
			phase4Hp = tier5Hp*0.40; phase4Ms = 0.85; phase4Dmg = 25;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 5;
			phase = 1;
			maxPhase = 4;
			//visual
			size = 1.5;
			alpha = 1;
			idleSprite = spr_boss_demonQueensHead_idle;
			oneShotSprite = spr_boss_demonQueensHead_oneShot;
			rapidFireSprite = spr_boss_demonQueensHead_rapidFire;
			chaseSprite = spr_boss_demonQueensHead_chase;
			teleportSprite = spr_boss_demonQueensHead_teleport;
			beamSprite = spr_boss_demonQueensHead_beam;
			circleSprite = spr_boss_demonQueensHead_circle;
			cdSprite = spr_boss_demonQueensHead_cd;
			//boss Specfic
			var horn = instance_create_depth(x,y,depth+1,obj_demonQueensHorn);
			horn.image_xscale = image_xscale;
			horn.image_yscale = horn.image_xscale;
			x -= 25;
		}
		#endregion
		#region Death Kings
		if (gameMaster.chosenBoss == Boss.DeathKing) 
		{
			//stats
			phase1Hp = tier5Hp*0.15; phase1Ms = 0.25; phase1Dmg = 24;
			phase2Hp = tier5Hp*0.15; phase2Ms = 0.25; phase2Dmg = 25;
			phase3Hp = tier5Hp*0.15; phase3Ms = 0.25; phase3Dmg = 27.5;
			phase4Hp = tier5Hp*0.25; phase4Ms = 0.25; phase4Dmg = 30;
			phase5Hp = tier5Hp*0.30; phase5Ms = 1.5; phase5Dmg = 32.5;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 5;
			phase = 1;
			maxPhase = 5;
			//visual
			size = 2;
			alpha = 0.75;
			idleSprite = spr_boss_deathKing_idle;
			oneShotSprite = spr_boss_deathKing_oneShot;
			rapidFireSprite = spr_boss_deathKing_rapidFire;
			chaseSprite = spr_boss_deathKing_chase;
			teleportSprite = spr_boss_deathKing_teleport;
			beamSprite = spr_boss_deathKing_beam;
			coneSprite = spr_boss_deathKing_cone;
			cdSprite = spr_boss_deathKing_cd;
			//boss Specfic
			teleportX = choose(-75,75);
			teleportY = choose(-75,75);
			canTeleport = false;
			teleportTime = (3)*10;
			instance_create_depth(x,y,depth,obj_teleportMarker);
		}
		#endregion
		#region Slime Queen
		if (gameMaster.chosenBoss == Boss.SlimeQueen) 
		{
			//stats
			phase1Hp = tier5Hp*0.10; phase1Ms = 0.7; phase1Dmg = 30;
			phase2Hp = tier5Hp*0.20; phase2Ms = 0.8; phase2Dmg = 35;
			phase3Hp = tier5Hp*0.25; phase3Ms = 0.9; phase3Dmg = 40;
			phase4Hp = 1500; phase4Ms = 0; phase4Dmg = 35;
			phase5Hp = tier5Hp*0.45; phase5Ms = 1; phase5Dmg = 35;
			hp = phase1Hp;
			global.bossDamage = phase1Dmg;
			moveSpeed = phase1Ms;
			moveType = MovementType.WalkingTowards;
			//attacks and phase
			tier = 5;
			phase = 1;
			maxPhase = 5;
			//visual
			size = 1.25;
			alpha = 1;
			idleSprite = spr_boss_slimeQueen_idle;
			oneShotSprite = spr_boss_slimeQueen_oneShot;
			rapidFireSprite = spr_boss_slimeQueen_rapidFire;
			chaseSprite = spr_boss_slimeQueen_chase;
			coneSprite = spr_boss_slimeQueen_cone;
			circleSprite = spr_boss_slimeQueen_circle;
			gooSprite = spr_boss_slimeQueen_goo;
			cdSprite = spr_boss_slimeQueen_cd;
			//boss Specfic
			x -= 25;
		}
		#endregion
	#endregion
	#region Tier 6 The Arena King
	if (gameMaster.chosenBoss == Boss.ArenaKing) 
	{
		//stats
		phase1Hp = tier6Hp*0.10; phase1Ms = 1; phase1Dmg = 18;
		phase2Hp = tier6Hp*0.12; phase2Ms = 1.2; phase2Dmg = 19;
		phase3Hp = tier6Hp*0.14; phase3Ms = 1.4; phase3Dmg = 20;
		phase4Hp = tier6Hp*0.16; phase4Ms = 1.6; phase4Dmg = 22.5;
		phase5Hp = tier6Hp*0.18; phase5Ms = 1.8; phase5Dmg = 25;
		phase6Hp = tier6Hp*0.30; phase6Ms = 2; phase6Dmg = 27.5;
		hp = phase1Hp;
		global.bossDamage = phase1Dmg;
		moveSpeed = phase1Ms;
		moveType = MovementType.WalkingTowards;
		//attacks and phase
		tier = 6;
		phase = 1;
		maxPhase = 6;
		if (gameMaster.chosenMode == Menues.BossRush){maxPhase = 5;}
		//visual
		size = 1;
		alpha = 1;
		idleSprite = spr_boss_arenaKing_idle;
		chaseSprite = spr_boss_arenaKing_chase;
		normalSprite = spr_boss_arenaKing_normal;
		circleSprite = spr_boss_arenaKing_circle;
		beamSprite = spr_boss_arenaKing_beam;
		rapidFireSprite = spr_boss_arenaKing_rapidFire;
		oneShotSprite = spr_boss_arenaKing_oneShot;
		teleportSprite = spr_boss_arenaKing_teleport;
		gooSprite = spr_boss_arenaKing_goo;
		coneSprite = spr_boss_arenaKing_cone;
		cdSprite = spr_boss_arenaKing_cd;
		//boss Specfic
		var sword = instance_create_depth(x,y,depth,obj_bossMeleeWeapon);
		sword.sprite_index = spr_kingsEdge_spin;
		sword.spinSpeed = 20;
		
		teleportX = choose(-75,75);
		teleportY = choose(-75,75);
		canTeleport = false;
		teleportTime = (3)*10;
		instance_create_depth(x,y,depth,obj_teleportMarker);
		
		kingCloneX = global.arenaMiddleX;
		kingCloneY = global.arenaMiddleY;
	}
	#endregion
#endregion
#region Finalize
global.playBossMusic = true;
sprite_index = normalSprite;
actualSpeed = moveSpeed;
normalMoveSpeed = moveSpeed;
maxHp = hp;
normalAlpha = alpha;
image_xscale = size;
image_yscale = size;
if (tier == 1){ timeAfterIndicate = (1.90)*30;  attackCooldown = (3.85)*30;}
if (tier == 2){ timeAfterIndicate = (1.70)*30;  attackCooldown = (3.75)*30;}
if (tier == 3){ timeAfterIndicate = (1.55)*30;  attackCooldown = (3.60)*30;}
if (tier == 4){ timeAfterIndicate = (1.40)*30;  attackCooldown = (3.50)*30;}
if (tier == 5){ timeAfterIndicate = (1.25)*30;  attackCooldown = (3.37)*30;}
if (tier == 6){ timeAfterIndicate = (1.15)*30;  attackCooldown = (3.25)*30;}
if (gameMaster.chosenMode == Menues.BossRush){maxHp *= 0.8; hp = maxHp;}
#endregion




