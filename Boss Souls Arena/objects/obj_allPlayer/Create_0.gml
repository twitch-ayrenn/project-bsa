/// @description Vars
randomize();
class = gameMaster.chosenClass;
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
moveSpeed = 3;
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
global.damage = 10;
#endregion
#region visuals and animation
state = States.Idle;
idleSprite = 0;
walkSprite = 0;
instance_create_depth(x,y,1,obj_allCursor);
playerSize = 1;
#endregion
#region class system
if (class == Character.ShadowAssassin)
{
	hp = 100;
	moveSpeed = 2;
	global.damage = 10;
	leftClickCooldown = (10)*30;
	rightClickCooldown = (10)*30;
	dashCooldown = (5)*30;
	ultCooldown = (20)*30;
	dashSpeed = 5;
	idleSprite = spr_player_theAssasin;
	walkSprite = spr_player_theAssasin_walking;
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
	hp = 100;
	moveSpeed = 3;
	global.damage = 10;
	leftClickCooldown = (9)*30;
	rightClickCooldown = (9)*30;
	dashCooldown = (9)*30;
	ultCooldown = (18)*30;
	dashSpeed = 3;
	idleSprite = spr_player_theMage;
	walkSprite = spr_player_theMage_walking;
	leftClickColor = c_aqua;
	rightClickColor = c_teal;
	dashColor = c_fuchsia;
	ultColor = c_red;
	//character specific
	pyroPortalAmount = int64(1);
	instance_create_depth(x,y,1,obj_pyroAttackRange);	
}
if (class == Character.BloodKnight)
{
	hp = 100*2;
	moveSpeed = 3;
	global.damage = 10;
	leftClickCooldown = (1)*30;
	rightClickCooldown = (1);
	dashCooldown = (10)*30;
	ultCooldown = (30)*30;
	dashSpeed = 7;
	idleSprite = spr_player_theBloodKnight;
	walkSprite = spr_player_theBloodKnight_walking;
	leftClickColor = c_teal;
	rightClickColor = c_teal;
	dashColor = c_fuchsia;
	ultColor = global.orange;
	//character specific
	rightClickMode = 1;
	batAmount = 1;
}
#endregion
#region Items

#endregion
#region maxValues
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
maxHp = hp;
sprite_index = idleSprite;
ultCooldownLeft = ultCooldown
#endregion