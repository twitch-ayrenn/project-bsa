/// @description Vars
randomize();
class = gameMaster.chosenClass;
save_gif = false;
count = 0;
gif_image = 0;
everyThirdFrame = 0;
time = 0;
#region Attacks and cooldown
//left
canLeftClick = true;
leftClickCooldown = 0;
leftClickCooldownLeft = 0;
leftClickColor = c_white;
weaponDirection = 0;
//right
canRightClick = true;
rightClickCooldown = 0;
rightClickCooldownLeft = 0;
rightClickColor = c_white;
//dash
canDash = true;
dashSpeed = 0;
actualDashSpeed = 0;
dashStop = (0.25)*30;
dashStopLeft = 0;
dashCooldown = 0;
dashCooldownLeft = 0;
global.iFrame = false;
dashColor = c_white;
//ult
canUlt = false;//false default
ultCooldown = 0;
ultCooldownLeft = 0;
ultColor = c_white;
#endregion
#region Stats
hp = 100;
moveSpeed = 2;
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
actualSpeedBefore = moveSpeed;
moveDirection = 0; 
global.damage = 1;
if (global.relase == true && global.deBugg == false){global.damage = 1;}
baseLifeSteal = 0.8;
global.lifeSteal = baseLifeSteal;
dashSpeed = 5;
meteorStun = 1;
global.noDamage = false;
noDamageStacks = 0;
noDamageTime = (0.1)*30;
agentSpeed = 1;
#endregion
#region visuals and animation
state = States.BeforeFight;
idleSprite = 0;
walkSprite = 0;
deadSprite = 0;
instance_create_depth(x,y,1,obj_allCursor);
playerSize = 1;
normalAlpha = 1;
drawCharge = false;
drawChargeFrame = 0;
//UI
hpLastFrame = 0;
hitVinjetAlpha = 0;
#endregion
#region class system
	#region Shadow Assassin
	if (class == Character.ShadowAssassin)
	{
		leftClickCooldown = (7)*30;
		rightClickCooldown = (10)*30;
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
		if (global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			var shadowRange = instance_create_depth(x,y,1,obj_shadowAttackRange);
			shadowRange.image_xscale *= 1;
			shadowRange.image_yscale = shadowRange.image_xscale;
		}
		daggerAmount = 10;
		normalAlpha = 0.85;
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		leftClickCooldown = (8)*30;
		rightClickCooldown = (11)*30;
		dashCooldown = (3)*30;
		ultCooldown = (16)*30;//16
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
		meteorStun = 1;
		meteor = 0;
	}
	#endregion
	#region Blood Knight David
	if (class == Character.BloodKnight)
	{
		hp = 100*2;
		leftClickCooldown = (0.8)*30;
		rightClickCooldown = (11)*30;
		dashCooldown = (4)*30;
		ultCooldown = (13)*30;
		idleSprite = spr_player_theBloodKnight;
		walkSprite = spr_player_theBloodKnight_walking;
		deadSprite = spr_player_theBloodKnight_dead;
		leftClickColor = c_maroon;
		rightClickColor = c_maroon;
		dashColor = c_maroon;
		ultColor = c_red;
		//character specific
		batAmount = 1;
		actualBKDashSpeed = 0;
		BKDashStop = (0.65)*30;
		BKDashStopLeft = 0;
	}
	#endregion
	#region Agent Of God Tira
	actualAGDashSpeed = 0;
	if (class == Character.AgentOfGod)
	{
		hp = 100;
		leftClickCooldown = (6)*30;
		rightClickCooldown = (8)*30;//8
		dashCooldown = (8)*30;
		ultCooldown = (18)*30;
		idleSprite = spr_player_agentOfGod_idle;
		walkSprite = spr_player_agentOfGod_walking;
		deadSprite = spr_player_agentOfGod_dead;
		leftClickColor = c_teal;
		rightClickColor = c_teal;
		dashColor = c_teal;
		ultColor = c_aqua;
		//character specific
		agentSpeed = 1;
		machineGunStacks = 0;
		machineGunTimes = 0;
		agentPassiveStacks = 0;
		if (global.itemSelected[Boss.DeathKnight] == false)
		{
			instance_create_depth(x,y,depth+1,obj_godsword);
		}
		actualAGDashSpeed = 0;
		aGDashStop = (0.4)*30;
		aGDashStopLeft = 0;
		//
		doConeShot = false;
		coneShotAmount = 10*5;
		coneShotTimes = 0;
		coneShotTime = (0.1)*30;
		coneShotStacks = 0;
	}
	#endregion
	#region Angel Slayer
	slayerDashSpeed = dashSpeed*(1+(gameMaster.bonusDash/100));
	slayerSpeed = 1;
	if (class == Character.AngelSlayer)
	{
		hp = 100;
		leftClickCooldown = (7)*30;
		rightClickCooldown = (8)*30;
		dashCooldown = (6)*30;
		ultCooldown = (15)*30;
		idleSprite = spr_player_angelSlayer_idle;
		walkSprite = spr_player_angelSlayer_walking;
		deadSprite = spr_player_angelSlayer_dead;
		leftClickColor = c_maroon;
		rightClickColor = c_maroon;
		dashColor = c_maroon;
		ultColor = c_red;
		//character specific
		slayerDashSpeed = dashSpeed*(1+(gameMaster.bonusDash/100));
		actualASDashSpeed = 0;
		ASDashStop = (0.25)*30;
		ASDashStopLeft = 0;
		slashOnce = false;
		shotOnce = false;
		slayerSpeed = 1;
		ultimateStacks = 0;
		ultimateTime = (5)*30;
		if (global.itemSelected[Boss.DeathKnight] == false)
		{
			instance_create_depth(x,y,depth+1,obj_slayerScythe);
		}
	}
	#endregion
	#region Graveling
	gravelingSpeed = 0;
	gravelingAreaSpeed = 1;
	actualGDashSpeed = 0;
	if (class == Character.Graveling)
	{
		hp = 100;
		leftClickCooldown = (3)*30; // 3
		rightClickCooldown = (6)*30;// 6
		dashCooldown = (5)*30;// 6
		ultCooldown = (12)*30; // 12
		idleSprite = spr_player_graveling;
		walkSprite = spr_player_graveling;
		deadSprite = spr_player_graveling_dead;
		leftClickColor = global.darkYellow;
		rightClickColor = global.darkYellow;
		dashColor = global.darkYellow;
		ultColor = c_yellow;
		//character specific
		gravelingSpeed = 0;
		gravlingMaxSpeed = 2;
		gravelingStacks = 0;
		gravelingAreaSpeed = 1;
		actualGDashSpeed = 0;
		GDashStop = (0.25)*30;
		GDashStopLeft = 0;
		instance_create_depth(x,y,depth,obj_gravelingRange);
		dashDamage = false;
		doGraveShot = false;
		graveShotAmount = 1;
		graveShotTimes = 0;
		graveShotTime = (0.4)*30;
		graveShotTime *= graveShotTime/(graveShotTime*(1 + gameMaster.bonusFirerate/100));
		graveShotStacks = 0;
		graveAngle = 0;
	}
	#endregion
	#region PlaugeWalker
	plagueSpeed = 1;
	if (class == Character.PlaugeWalker)
	{
		hp = 100;
		leftClickCooldown = (2)*30; // 2
		rightClickCooldown = (6)*30;// 6
		dashCooldown = (10)*30;// 12
		ultCooldown = (18)*30; // 18
		idleSprite = spr_player_plagueWalker_idle;
		walkSprite = spr_player_plagueWalker_walking;
		deadSprite = spr_player_plagueWalker_dead;
		leftClickColor = c_green;
		rightClickColor = c_green;
		dashColor = c_green;
		ultColor = c_lime;
		//character specific
		plaguelingAmount = 4;
		var plagueRange = instance_create_depth(mouse_y,mouse_x,depth,obj_plagueGround);
		plagueRange.objectToFollow = id;
		plagueRange.image_xscale *= 0.8 + 0.15 * (gameMaster.bonusConjur/100);
		plagueRange.image_yscale = plagueRange.image_xscale;
		
	}
	#endregion
#endregion
#region Stats
hp += gameMaster.bonusHealth;
if (class == Character.AngelSlayer && hp > 150){hp = 150;}
moveSpeed += gameMaster.bonusSpeed/10;
dashSpeed *= 1+(gameMaster.bonusDash/100);
global.damage += gameMaster.bonusDamage/10;
leftClickCooldown *= leftClickCooldown/(leftClickCooldown*(1 + gameMaster.bonusFirerate/100));
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
totalItems = 20;
if (global.itemSelected[Boss.StatueOfCorruption] == true && global.slot2 == true)
{
	itemRolled[1] = false;
	itemRolled[2] = false;
	counter = 1;
	while (itemRolled[1] == false || itemRolled[2] == false)
	{
		if (counter == 6 || counter == 10 || counter == 20){counter++;}
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
	while(itemsRolled < global.maxItemSlots + 3)
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
summonFlamieTime = clamp(9/conjurationPower,3,9)*30;
summonFlamieStacks = 0;
if (global.itemSelected[Boss.FlameWisp] == true){summonFlamie = true;}
#endregion
#region The Corrupter / Edge Of Corruption
edgeOfCorruptionCharge = 0;
edgeOfCorruptionChargeTime = (2)*30;
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
	global.fSFireRate *= 1 - clamp((gameMaster.bonusCooldown/100)*2,0,0.9);
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
	var extraDamage = global.damage*5*(1+(gameMaster.bonusFirerate/100));
	global.deathScyhteDamage = extraDamage;
	leftClickCooldown = (3)*30;
	leftClickColor = c_maroon;
}
#endregion
#region Angel Knight Oscar/ultra Rapid Fire Hourglass
if (global.itemSelected[Boss.AngelKnightOscar] == true)
{
	global.damage *= 0.55;
}
#endregion
#region Demon General Rektaar
if (global.itemSelected[Boss.DemonLordRekTaar] == true)
{
	instance_create_depth(x,y,depth+1,obj_visual_demonPortal);
	leftClickCooldown = (6)*30;
	leftClickCooldown *= 1 - (gameMaster.bonusFirerate/100);
	leftClickColor = c_maroon;
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
#region DemonQueens Head
if (global.itemSelected[Boss.DemonQueensHead] == true)
{
	ultCooldown = (18)*30;
	ultCooldown *= 1 - clamp((gameMaster.bonusCooldown/100),0,cdrCap);
	ultColor = c_lime;
}
bfSpeed = 1;
#endregion
#region Death King
if (global.itemSelected[Boss.DeathKing] == true)
{
	if (class != Character.Graveling)
	{
		instance_create_depth(x,y,depth+1,obj_visual_deathBat);
	}
	if (class != Character.ShadowAssassin)
	{
		if (class != Character.Graveling)
		{
			var deathBatRange = instance_create_depth(x,y,depth,obj_deathBatRange);
			deathBatRange.image_xscale *= 1;
			deathBatRange.image_yscale = deathBatRange.image_xscale;
		}
		teleportRange = 96;
		teleportRange *= 1 + (gameMaster.bonusDash/100);
	}
}
#endregion
#region Slime Queens - T52 Slime Armor
if (global.itemSelected[Boss.SlimeQueen] == true)
{
	t52Idle = spr_equipment_t52slimeArmor_idle;
	t52Walking = spr_equipment_t52slimeArmor_walk;
	t52Time = (7)*30;
	t52Stacks = 0;
	maxHp = hp;
	slimeArmorHp = maxHp*1.3;
}
t52Active = false;
t52Speed = 1;
#endregion
#region Arena King - Become the King
if (global.itemSelected[Boss.ArenaKing] == true)
{
	instance_create_depth(x,y,depth,obj_equipment_crownGround);
}
#endregion
#region Boss Rush
actualSPHDashSpeed = 0;
sPHDashStop =  0;
sPHDashStopLeft = 0;
sPHDashDamage = 0;
if (global.itemSelected[Boss.BossRushReward] == true)
{
	ultCooldown = (18)*30;
	ultCooldown *= 1 - clamp((gameMaster.bonusCooldown/100),0,cdrCap);
	ultColor = c_teal;
	
	actualSPHDashSpeed = 0;
	sPHDashStop = (0.4)*30;
	sPHDashStopLeft = 0;
	sPHDashDamage = false;
}
#endregion
#region Campagin Completed
if (global.itemSelected[Boss.CampaignReward] == true)
{
	hellStacks = 0;
}
#endregion
#endregion
#region Bosses
blackOutAlpha = 0;
#endregion
#region maxValues
if (class == Character.Pyromancer){leftClickCooldown = (8)*30; coneShotAmount = int64(global.damage*2);}
if (class == Character.BloodKnight){hp += gameMaster.bonusHealth*0.5;}
if (class == Character.AngelSlayer && hp > 150){hp = 150;}
actualBKDashSpeed = 0; actualASDashSpeed = 0;//needs to exist or else it crashes 
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
maxHp = hp;
slimeArmorHp = maxHp*1.2;
normalMaxHp = maxHp;
sprite_index = idleSprite;
normalIdleSprite = idleSprite;
normalWalkSprite = walkSprite;
ultCooldownLeft = ultCooldown
if (global.itemSelected[Boss.DeathKnight] == true){leftClickCooldown = (3)*30;}
if (global.tutorial == true){hp = 50;}
#endregion