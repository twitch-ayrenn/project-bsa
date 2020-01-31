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
canUlt = false;//false default
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
global.damage = 1*1;
baseLifeSteal = 0.8;
global.lifeSteal = baseLifeSteal;
dashSpeed = 5;
meteorStun = 1;
global.noDamage = false;
noDamageStacks = 0;
noDamageTime = (0.1)*30;
#endregion
#region visuals and animation
state = States.BeforeFight;
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
	rightClickColor = global.purple;
	dashColor = global.purple;
	ultColor = c_fuchsia;
	//character specific
	teleportRange = 96;
	teleportRange *= 1 + (gameMaster.bonusDash/100);
	throwKnives = false;
	knivesToThrow = 0;
	knivesThrownStacks = 0;
	throwingDirection = 0;
	if (global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
	{
		var shadowRange = instance_create_depth(x,y,1,obj_shadowAttackRange);
		shadowRange.image_xscale *= 1+(gameMaster.bonusDash/100);
		shadowRange.image_yscale = shadowRange.image_xscale;
	}
	daggerAmount = 12;
}
if (class == Character.Pyromancer)
{
	leftClickCooldown = (8)*30;
	rightClickCooldown = (11)*30;
	dashCooldown = (3.5)*30;
	ultCooldown = (16)*30;
	idleSprite = spr_player_theMage;
	walkSprite = spr_player_theMage_walking;
	deadSprite = spr_player_theMage_dead;
	leftClickColor = global.orange;
	rightClickColor = global.orange;
	dashColor = global.orange;
	ultColor = c_yellow;
	//character specific
	charge = 0;
	maxCharge = (2.5)*30;//3
	doConeShot = false;
	coneShotAmount = int64(global.damage*2);
	coneShotTimes = 0;
	coneShotTime = (0.4)*30;
	coneShotStacks = 0;
	meteorSprite = spr_fireBall;
	meteorStun = 1;
	meteor = 0;
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
	deadSprite = spr_player_theBloodKnight_dead;
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
	BKDdashDirection = 0;
}
#endregion
#region Stats
hp += gameMaster.bonusHealth;
moveSpeed += gameMaster.bonusSpeed/10;
dashSpeed *= 1+(gameMaster.bonusDash/100);
global.damage += gameMaster.bonusDamage/10;
leftClickCooldown *= 1 - (gameMaster.bonusFirerate/100);
global.lifeSteal += gameMaster.bonusLifeSteal/100;
conjurationPower = 1 + (gameMaster.bonusConjur/100);
cdrCap = 0.5;
if (global.itemSelected[Boss.AngelKnightOscar] == true){cdrCap = 0.6;}
rightClickCooldown *= 1 - clamp((gameMaster.bonusCooldown/100),0,cdrCap);
ultCooldown *= 1 - clamp((gameMaster.bonusCooldown/100),0,cdrCap);
dashCooldown *= 1 - clamp((gameMaster.bonusCooldown/100),0,cdrCap);
#endregion
#region Items
preLCCD = 0;
if (global.itemSelected[Boss.DeathKnight] == true){preLCCD = leftClickCooldown;}
activateUltItem = false;
activateDashItem = false;
activateLeftClickItem = false;
activateRightClickItem = false;
#region Statue of Corruption / The Lootbox
totalItems = 13;
if (global.itemSelected[Boss.StatueOfCorruption] == true && global.slot2 == true)
{
	itemRolled[1] = false;
	itemRolled[2] = false;
	counter = 1;
	while (itemRolled[1] == false || itemRolled[2] == false)
	{
		if (counter == 6 || counter == 10){counter++;}
		if (counter == 9 || counter == 13){counter += 2;}
		
		if (global.itemSelected[counter] == false && irandom_range(1,totalItems) == 1) 
		{
			global.itemSelected[counter] = true;
			if (itemRolled[1] == true && itemRolled[2] == false){itemRolled[2] = true;}
			if (itemRolled[1] == false){itemRolled[1] = true;}
		}
		
		counter++;
		if(counter > totalItems){counter = 1;}
	}
	if (global.itemSelected[Boss.DeathKnight] == true){preLCCD = leftClickCooldown;}
}
if (global.itemSelected[Boss.StatueOfCorruption] == true && global.slot2 == false)
{
	itemsRolled = 0;
	counter = 1;
	while(itemsRolled < global.maxItemSlots + 2)
	{
		if (counter == 6 || counter == 10){counter++;}
		if (counter == 9 || counter == 13){counter += 2;}
		
		if (global.itemSelected[counter] == false && irandom_range(1,totalItems) == 1)
		{
			global.itemSelected[counter] = true;
			itemsRolled++;	
		}
		
		counter++;
		if(counter > totalItems){counter = 1;}
	}
}
#endregion
#region Blood Zombie / Zombie Head
bPSpeed = 1;
if (global.itemSelected[Boss.BloodZombie] == true){instance_create_depth(x,y,depth+1,obj_visual_zombieHead);}
#endregion
#region Wisp Sister Julia / Flamie
summonFlamie = false;
summonFlamieTime = clamp(24*((2-conjurationPower)),3,24)*30;
summonFlamieStacks = 0;
if (global.itemSelected[Boss.FlameWisp] == true){summonFlamie = true;}
#endregion
#region The Corrupter / Edge Of Corruption
edgeOfCorruptionCharge = 0;
edgeOfCorruptionChargeTime = (2.5)*30;
#endregion
#region Knight Witch Yi / Death Cap
madHatAmount = int64(1*conjurationPower);
#endregion
#region Wisp Sister Julia / Futuristic Soldier
if (global.itemSelected[Boss.WispSisterJulia] == true)
{
	repeat(int64(2*conjurationPower))
	{
		instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),-y,obj_equipment_futuristicSoldier);	
	}
	global.fSFireRate = (1)*30;
	global.fSFireRate *= 1 - clamp((gameMaster.bonusCooldown/100)*1.25,0,0.9);
}
#endregion
#region Angel Slayer / Nether Portal
global.portalTime = clamp(7*(1 - (clamp(gameMaster.bonusCooldown*1,0,99)/100)),2,7);
if (global.itemSelected[Boss.AngelSlayerRekZul] == true)
{
	instance_create_depth(x,y,depth,obj_equipment_leftPortal);
	instance_create_depth(x,y,depth,obj_equipment_rightPortal);
}
#endregion
#region Death Knight / Death Scythe
if (global.itemSelected[Boss.DeathKnight] == true && global.itemSelected[Boss.DemonLordRekTaar] == false)
{
	instance_create_depth(x,y,depth+1,obj_equipment_deathScythe);
	var extraDamage = global.damage*6*(1+(gameMaster.bonusFirerate/100));
	global.deathScyhteDamage = extraDamage;
	leftClickCooldown = (3)*30;
}
#endregion
#region Angel Knight Oscar/ultra Rapid Fire Hourglass
if (global.itemSelected[Boss.AngelKnightOscar] == true)
{
	global.damage *= 0.5;
}
#endregion
#region Demon General Rektaar
if (global.itemSelected[Boss.DemonLordRekTaar] == true)
{
	instance_create_depth(x,y,depth+1,obj_visual_demonPortal);
	leftClickCooldown = (6)*30;
	leftClickCooldown *= 1 - (gameMaster.bonusFirerate/100);
}
#endregion
#region Gravekeeper
gravekeeperSpeed = 1;
if (global.itemSelected[Boss.Gravekeeper] == true)
{
	instance_create_depth(x+irandom_range(10,25),y+irandom_range(-25,25),depth,obj_equipment_gravekeeper);
}
#endregion
#region Bloodarmy General
shield = false;
shieldStacks = 0;
shieldTime = (2)*30;
shieldSpeed = 1;
#endregion
#region Wisp Sisters the last wish
if (global.itemSelected[Boss.WispSisters] == true)
{
	damageInCircle = global.damage*1.1;
	damageOutSideCircle = global.damage;
	lifestealInCircle = global.lifeSteal + 0.1;
	lifestealOutsideCircle = global.lifeSteal;
}
#endregion
#region

#endregion
#endregion
#region Bosses
blackOutAlpha = 0;
#endregion
#region maxValues
if (class == Character.Pyromancer){leftClickCooldown = (8)*30; coneShotAmount = int64(global.damage*2);}
if (class == Character.BloodKnight){hp += gameMaster.bonusHealth;}
actualBKDashSpeed = 0;//needs to exist or else it crashes 
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
maxHp = hp;
sprite_index = idleSprite;
ultCooldownLeft = ultCooldown
if (global.itemSelected[Boss.DeathKnight] == true){leftClickCooldown = (3)*30;}
#endregion