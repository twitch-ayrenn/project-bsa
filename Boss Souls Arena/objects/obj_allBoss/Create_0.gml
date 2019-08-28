/// @description Vars
#region Stats
phase1Hp = 0; phase1Ms = 0; phase1Dmg = 0;
phase2Hp = 0; phase2Ms = 0; phase2Dmg = 0;
phase3Hp = 0; phase3Ms = 0; phase3Dmg = 0;
phase4Hp = 0; phase4Ms = 0; phase4Dmg = 0;
phase5Hp = 0; phase5Ms = 0; phase5Dmg = 0;
phase6Hp = 0; phase6Ms = 0; phase6Dmg = 0;
hp = 0;
maxHp = hp;
global.bossDamage = 10;
moveSpeed = 0;
actualSpeed = moveSpeed;
#endregion
#region Movement
enum MovementType
{
	WalkingTowards = 1,
	WalkingAround,
	Snake,
	
}
moveType = 1;
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
	SummonTurret,
}
timeAfterIndicate = (3)*30;
attackCooldown = (6)*30;
attackColor = c_white
#endregion
#region Visuals
size = 1;
image_xscale = size;
image_yscale = size;
alpha = 1;
normalSprite = 0;
circleSprite = 0;
summonSprite = 0;
#endregion
#region Bosses
	#region BloodZombie
	if (gameMaster.chosenBoss == Boss.BloodZombie) 
	{
		//stats
		phase1Hp = 150; phase1Ms = 1; phase1Dmg = 20;
		phase2Hp = 250; phase2Ms = 1.5; phase2Dmg = 30;
		hp = phase1Hp;
		global.bossDamage = phase1Dmg;
		moveSpeed = phase1Ms;
		moveType = MovementType.WalkingTowards;
		//attacks and phase
		tier = 1;
		phase = 1;
		maxPhase = 4;
		//visual
		size = 1;
		alpha = 1;
		normalSprite = spr_boss_bloodZombie_nA;
		circleSprite = spr_boss_bloodZombie_cir;
		summonSprite = spr_boss_bloodZombie_sum;
	}
	#endregion
#endregion
#region Finalize
sprite_index = normalSprite;
actualSpeed = moveSpeed;
maxHp = hp;
image_xscale = size;
image_yscale = size;
if (tier == 1){ timeAfterIndicate = (2.5)*30;  attackCooldown = (5)*30;}
if (tier == 2){ timeAfterIndicate = (2)*30;  attackCooldown = (4.5)*30;}
if (tier == 3){ timeAfterIndicate = (1.75)*30;  attackCooldown = (4.25)*30;}
if (tier == 4){ timeAfterIndicate = (1.5)*30;  attackCooldown = (4)*30;}
if (tier == 5){ timeAfterIndicate = (1)*30;  attackCooldown = (3.75)*30;}
if (tier == 6){ timeAfterIndicate = (0.75)*30;  attackCooldown = (3.25)*30;}
#endregion



