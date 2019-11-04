/// @description Vars
randomize();
class = gameMaster.chosenClass;
#region
#endregion
#region Attacks and cooldown
//left
canLeftClick = true;
leftClickCooldown = 0;
leftClickCooldownLeft = 0;
leftClickColor = c_white;
leftClickColorCd = c_white
//right
canRightClick = true;
rightClickCooldown = 0;
rightClickCooldownLeft = 0;
rightClickColor = c_white;
rightClickColorCd = c_white;
//dash
canDash = true;
dashSpeed = 0;
actualDashSpeed = 0;
dashStop = (0.25)*30;
dashStopLeft = 0;
dashCooldown = 0;
dashCooldownLeft = 0;
dashDirection = 0;
global.iFrame = false;
dashColor = c_white;
dashColorCd = c_white;
//ult
canUlt = true;//false default
ultCooldown = 0;
ultCooldownLeft = 0;
ultColor = c_white;
ultColorCd = c_white;
#endregion
#region Stats
hp = 100;
moveSpeed = 2;
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
global.damage = 1;
baseLifeSteal = 0.75;
global.lifeSteal = baseLifeSteal;
dashSpeed = 5;
#endregion
#region visuals and animation
state = States.Idle;
idleSprite = 0;
walkSprite = 0;
deadSprite = 0;
instance_create_depth(x,y,1,obj_allCursor);
playerSize = 1;
#endregion
#region class system
if (class == Character.ShadowAssassin)
{
	leftClickCooldown = (7)*30;
	rightClickCooldown = (12)*30;
	dashCooldown = (7)*30;
	ultCooldown = (16)*30;
	idleSprite = spr_player_theAssasin;
	walkSprite = spr_player_theAssasin_walking;
	deadSprite = spr_player_theAssasin_dead;
	leftClickColor = global.purple;
	rightClickColor = c_fuchsia;
	dashColor = c_fuchsia;
	ultColor = c_fuchsia;
	//character specific
	teleportRange = 96;
	throwKnives = false;
	knivesToThrow = 0;
	knivesThrownStacks = 0;
	throwingDirection = 0;
	instance_create_depth(x,y,1,obj_shadowAttackRange);
}
if (class == Character.Pyromancer)
{
	leftClickCooldown = (9)*30;
	rightClickCooldown = (9)*30;
	dashCooldown = (9)*30;
	ultCooldown = (18)*30;
	idleSprite = spr_player_theMage;
	walkSprite = spr_player_theMage_walking;
	leftClickColor = c_aqua;
	rightClickColor = c_teal;
	dashColor = c_fuchsia;
	ultColor = c_red;
	//character specific
	charge = 0;
	maxCharge = (3)*30;
}
if (class == Character.BloodKnight)
{
	hp = 100*2;
	leftClickCooldown = (1)*30;
	rightClickCooldown = (7)*30;
	dashCooldown = (7)*30;
	ultCooldown = (14)*30;
	idleSprite = spr_player_theBloodKnight;
	walkSprite = spr_player_theBloodKnight_walking;
	leftClickColor = c_teal;
	rightClickColor = c_teal;
	dashColor = c_fuchsia;
	ultColor = global.orange;
	//character specific
	batAmount = 1;
	actualBKDashSpeed = 0;
	BKDashStop = (0.35)*30;
	BKDashStopLeft = 0;
	BKDashCooldown = 0;
	BKDashCooldownLeft = 0;
	BKDdashDirection = 0;
}
#endregion
#region Items
hp += gameMaster.bonusHealth;
moveSpeed += gameMaster.bonusSpeed/10;
dashSpeed *= 1+(gameMaster.bonusDash/100);
global.damage += gameMaster.bonusDamage/10;
leftClickCooldown *= 1 - (gameMaster.bonusFirerate/100);
global.lifeSteal += gameMaster.bonusLifeSteal;
auraPower = 1 + (gameMaster.bonusAura/100);
conjurationPower = 1 + (gameMaster.bonusConjur/100);
rightClickCooldown *= 1 - (gameMaster.bonusCooldown/100);
ultCooldown *= 1 - (gameMaster.bonusCooldown/100);
dashCooldown *= 1 - (gameMaster.bonusCooldown/100);
activateUltItem = false;
activateDashItem = false;
activateLeftClickItem = false;
activateRightClickItem = false;
//
if (global.itemSelected[Boss.BloodZombie] == true){instance_create_depth(x,y,depth+1,obj_visual_zombieHead);}
summonFlamie = false;
summonFlamieTime = 10*((1-conjurationPower)+1)*30;
summonFlamieStacks = 0;
if (global.itemSelected[Boss.FlameWisp] == true){summonFlamie = true;}
bPSpeed = 1;
#endregion
#region Bosses
blackOutAlpha = 0;
#endregion
#region maxValues
actualBKDashSpeed = 0;//needs to exist or else it crashes 
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
maxHp = hp;
sprite_index = idleSprite;
ultCooldownLeft = ultCooldown
#endregion