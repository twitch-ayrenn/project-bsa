/// @description Insert description here
// You can write your code in this editor
globalvar attack;
if (startUpVars == true)
{
	startUpVars = false;
	attack = 0;
}
#region Visuals
randomize();
var sizeX = size;
if (moveType != MovementType.StandingStill)
{
	if (x < obj_allPlayer.x){sizeX = size;}
	if (x > obj_allPlayer.x){sizeX = -size;}
}
image_xscale = sizeX;
image_yscale = size;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y;
if (gameMaster.chosenBoss == Boss.BloodRoyalVarus){depth = obj_allPlayer.depth+1;}
image_alpha = alpha;
if (image_blend = c_red)
{
	image_blend = c_white;	
}
#endregion
#region Movement
actualSpeed = moveSpeed;
if (moveType == MovementType.WalkingTowards && gameMaster.chosenBoss != Boss.DeathKnight)
{
	move_towards_point(global.player.x,global.player.y,actualSpeed);
}
if (moveType == MovementType.WalkingTowardsWDirection)
{
	if (attack == Atks.NormalShot)
	{
		if (x <= global.player.x){x += actualSpeed;}
		if (x > global.player.x){x -= actualSpeed;}
		if (y <= global.player.y){y += actualSpeed;}
		if (y > global.player.y){y -= actualSpeed;}
		direction = point_direction(x,y,global.player.x,global.player.y);
	}
	if (attack != Atks.NormalShot)
	{
		move_towards_point(global.player.x,global.player.y,actualSpeed);
	}
}
if (moveType == MovementType.StandingStill)
{
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
	{
		globalvar leftX; leftX = global.arenaMiddleX - 175;
		globalvar leftY; leftY = global.arenaMiddleY;
		globalvar rightX; rightX = global.arenaMiddleX + 175;
		globalvar rightY; rightY = global.arenaMiddleY;
		globalvar topX; topX = global.arenaMiddleX;
		globalvar topY; topY = global.arenaMiddleY - 145;
		if (position == 1)
		{
			x = leftX;	y = leftY;
		}
		if (position == 2)
		{
			x = topX;	y = topY;
		}
		if (position == 3)
		{
			x = topX;	y = topY;
		}
	}
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		x = global.arenaMiddleX;
		y = global.arenaMiddleY-175;
	}
}
#endregion
#region Ongoing things
	#region The Corrupter
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var corruptKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			corruptKlot.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			corruptKlot.speed = 6;
			corruptKlot.image_angle = corruptKlot.direction;
			//Visual
			corruptKlot.image_alpha = 0.85;
			corruptKlot.image_blend = c_purple;
			corruptKlot.sprite_index = spr_bloodKlott;
			corruptKlot.image_xscale = 1.5;
			corruptKlot.image_yscale = 1.5;
			corruptKlot.effectType = Effect.Flare;
		
			alarm[2] = (0.5)*30;
		}
	}
	#endregion
	#region The Mad Witches
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var fireBalls = instance_create_depth(topX,topY,depth+1,obj_enemyProjectile);
			//Main
			fireBalls.direction = point_direction(topX,topY,obj_allPlayer.x,obj_allPlayer.y);
			fireBalls.speed = 5;
			fireBalls.image_angle = fireBalls.direction+90;
			//Visual
			fireBalls.image_alpha = 0.85;
			if (position == 1){fireBalls.image_blend = c_yellow;}
			if (position == 2){fireBalls.image_blend = c_yellow;}
			if (position == 3){fireBalls.image_blend = global.orange;}
			fireBalls.sprite_index = spr_fireBall;
			fireBalls.image_xscale = 1;
			fireBalls.image_yscale = 1;
			fireBalls.effectType = Effect.Flare;
		
			var fireBalls2 = instance_create_depth(leftX,leftY,depth+1,obj_enemyProjectile);
			//Main
			fireBalls2.direction = point_direction(leftX,leftY,obj_allPlayer.x,obj_allPlayer.y);
			fireBalls2.speed = 5;
			fireBalls2.image_angle = fireBalls2.direction+90;
			//Visual
			fireBalls2.image_alpha = 0.85;
			if (position == 1){fireBalls2.image_blend = c_lime;}
			if (position == 2){fireBalls2.image_blend = global.orange;}
			if (position == 3){fireBalls2.image_blend = c_lime;}
			fireBalls2.sprite_index = spr_fireBall;
			fireBalls2.image_xscale = 1;
			fireBalls2.image_yscale = 1;
			fireBalls2.effectType = Effect.Flare;
		
			var fireBalls3 = instance_create_depth(rightX,rightY,depth+1,obj_enemyProjectile);
			//Main
			fireBalls3.direction = point_direction(rightX,rightY,obj_allPlayer.x,obj_allPlayer.y);
			fireBalls3.speed = 5;
			fireBalls3.image_angle = fireBalls3.direction+90;
			//Visual
			fireBalls3.image_alpha = 0.85;
			if (position == 1){fireBalls3.image_blend = global.orange;}
			if (position == 2){fireBalls3.image_blend = c_lime;}
			if (position == 3){fireBalls3.image_blend = c_yellow;}
			fireBalls3.sprite_index = spr_fireBall;
			fireBalls3.image_xscale = 1;
			fireBalls3.image_yscale = 1;
			fireBalls3.effectType = Effect.Flare;
		
			alarm[2] = (0.75)*30;
		}
	}
	#endregion
	#region WispSister anna
	if (gameMaster.chosenBoss == Boss.WispSisterAnna)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var fireball = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireball.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			fireball.speed = 6;
			fireball.image_angle = fireball.direction+90;
			//Visual
			fireball.image_alpha = 0.85;
			fireball.image_blend = c_purple;
			fireball.sprite_index = spr_fireBall;
			fireball.image_xscale = 1;
			fireball.image_yscale = 1;
			fireball.effectType = Effect.Flare;
		
			alarm[2] = (0.5)*30;
		}
	}
	#endregion
	#region Flame Gate
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var coneWide = 45;
			var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.34;
			var coneAmount = 3;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 5;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.8;
				fireBolt.sprite_index = spr_fireBall;
				fireBolt.image_blend = global.orange;
				fireBolt.image_xscale = 1;
				fireBolt.image_yscale = 1;
				fireBolt.effectType = Effect.Flare;
				coneAtkFW += (coneWide/coneAmount);
			}
		
			alarm[2] = (0.5)*30;
		}
	}
	#endregion
	
#endregion
#region Attacks
if(chooseAnAttack == true)
{
	chooseAnAttack = false;
	#region Tier1 Bosses
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 1){attack = choose(Atks.NormalShot,Atks.NormalShot,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 2){attack = choose(Atks.NormalShot,Atks.GooSpawn,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.FlameWisp && phase == 1){attack = choose(Atks.ConeAttack,Atks.OneShotAttack,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.FlameWisp && phase == 2){attack = choose(Atks.ConeAttack,Atks.CircleAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 1){attack = choose(Atks.BeamAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 2){attack = choose(Atks.BeamAttack,Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus && phase == 1){attack = choose(Atks.ConeAttack,Atks.OneShotAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus && phase == 2){attack = choose(Atks.ChaseAttack,Atks.OneShotAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.TheMadWitches){attack = choose(Atks.BeamAttack,Atks.GooSpawn,Atks.RapidFire);}
	var bottomGooSpawn = instance_nearest(global.arenaMiddleX,global.arenaMiddleY+200,obj_enemyProjectile);
	if (instance_exists(obj_enemyProjectile) && bottomGooSpawn.image_xscale == 2.5){if (gameMaster.chosenBoss == Boss.TheMadWitches){attack = choose(Atks.BeamAttack,Atks.RapidFire);}}
	#endregion
	#region Tier2 Bosses
	if (gameMaster.chosenBoss == Boss.WispSisterAnna && phase == 1){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.WispSisterAnna && phase == 2){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisterAnna && phase == 3){attack = choose(Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.FlameGate && phase == 1){attack = choose(Atks.RapidFire,Atks.RapidFire,Atks.ConeAttack,Atks.OneShotAttack,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 1){attack = choose(Atks.NormalShot);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 2){attack = choose(Atks.NormalShot,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 3){attack = choose(Atks.ChaseAttack,Atks.ChaseAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 4){attack = choose(Atks.NormalShot,Atks.ChaseAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 4 && gameMaster.chosenClass != Character.ShadowAssassin){attack = choose(Atks.ChaseAttack);}
	
	#endregion
	if (attack == Atks.NormalShot)
	{
		sprite_index = normalSprite;
		attackColor = c_maroon;
		#region Death Knight
		if (gameMaster.chosenBoss == Boss.DeathKnight)
		{
			speed = dashSpeed;
			
			alarm[4] = (0.35)*30;
		}
		#endregion
	}
	if (attack == Atks.CircleAttack)
	{
		sprite_index = circleSprite;		
		attackColor = c_fuchsia;
	}
	if (attack == Atks.GooSpawn)
	{
		sprite_index = gooSprite;
		attackColor = c_blue;
		#region BloodZombie
		if (gameMaster.chosenBoss == Boss.BloodZombie)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.125;
			indicator.image_yscale = 0.125;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region WispSisterAnna
		if (gameMaster.chosenBoss == Boss.WispSisterAnna)
		{
			var indicator = instance_create_depth(global.player.x,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.25;
			indicator.image_yscale = 0.25;
			indicator.image_blend = c_maroon;
		}
		#endregion
	}
	if (attack == Atks.ConeAttack)
	{
		sprite_index = coneSprite;		
		attackColor = c_aqua;
	}
	if (attack == Atks.OneShotAttack)
	{
		sprite_index = oneShotSprite;
		attackColor = c_red;
	}
	if (attack == Atks.ChaseAttack)
	{
		sprite_index = chaseSprite;
		attackColor = c_yellow;
		#region Blood Royal Varus
		if (gameMaster.chosenBoss == Boss.BloodRoyalVarus)
		{
			moveSpeed = 2.6;
			var chaseDamage = instance_create_depth(x,y,depth-1,obj_enemyProjectile);
			//Visual
			chaseDamage.image_alpha = 0;
			chaseDamage.sprite_index = spr_chaseDamage;
			chaseDamage.image_xscale = 0.2;
			chaseDamage.image_yscale = 0.2;
			chaseDamage.stickOn = true;
			chaseDamage.range = (7.5)*30;
			chaseDamage.effectType = Effect.NoEffect;
		}
		#endregion
		#region Wisp Sister Anna
		if (gameMaster.chosenBoss == Boss.WispSisterAnna)
		{
			moveSpeed = 2.65;
			var chaseDamage = instance_create_depth(x,y,depth-1,obj_enemyProjectile);
			//Visual
			chaseDamage.image_alpha = 0;
			chaseDamage.sprite_index = spr_chaseDamage;
			chaseDamage.image_xscale = 0.3;
			chaseDamage.image_yscale = 0.3;
			chaseDamage.stickOn = true;
			chaseDamage.range = (6.5)*30;
			chaseDamage.effectType = Effect.NoEffect;
		}
		#endregion
		#region Death Knight
		if (gameMaster.chosenBoss == Boss.DeathKnight)
		{
			moveSpeed = 2.35;
			with(obj_bossMeleeWeapon)
			{
				state = MeleeWeaponStates.SpinChase;
			}
		}
		#endregion
	}
	if (attack == Atks.RapidFire)
	{
		sprite_index = rapidFireSprite;
		attackColor = global.lightBlue;
	}
	if (attack == Atks.BeamAttack)
	{
		sprite_index = beamSprite;
		attackColor = global.orange;
		drawArea = true;
	}
	if (attack == Atks.TeleportAttack)
	{
		sprite_index = teleportSprite;
		attackColor = global.purple;
		if (gameMaster.chosenBoss == Boss.WispSisterAnna || gameMaster.chosenBoss == Boss.BloodPrinceVarus)
		{
			alpha = 0;
			var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
			var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
			if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
			if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
		}
		if (gameMaster.chosenBoss == Boss.DeathKnight)
		{
			var indicator = instance_create_depth(global.player.x+40,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.08;
			indicator.image_yscale = 0.08;
			indicator.image_blend = c_maroon;
			indicator.followPlayer = true;
		}
	}
	alarm[0] = timeAfterIndicate;
	alarm[1] = attackCooldown*choose(1,1,1,1,2);
}
#endregion
#region Phases
if (hp <= 0 && phase == 1 && phase != maxPhase)
{
	phase = 2;
	hp = phase2Hp;
	moveSpeed = phase2Ms;
	global.bossDamage = phase2Dmg;
	#region Flame Wisp
	if (gameMaster.chosenBoss == Boss.FlameWisp)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 3;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
		infernalBall.chase = true;
		infernalBall.range = (6.5)*30;
		infernalBall.effectType = Effect.Smoke;
	}
	#endregion
	#region The Corrupter 1
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
	{
		var middleGooSpawn = instance_nearest(645,590,obj_enemyProjectile);
		with (middleGooSpawn)
		{
			image_xscale = 2.5;
			image_yscale = image_xscale;
		}
	}
	#endregion
}
if (hp <= 0 && phase == 2 && phase != maxPhase)
{
	phase = 3;
	hp = phase3Hp;
	moveSpeed = phase3Ms;
	global.bossDamage = phase3Dmg;
}
if (hp <= 0 && phase == 3 && phase != maxPhase)
{
	phase++;
	hp = phase4Hp;
	moveSpeed = phase4Ms;
	global.bossDamage = phase4Dmg;
}
if (hp <= 0 && phase == 4 && phase != maxPhase)
{
	phase++;
	hp = phase5Hp;
	moveSpeed = phase5Ms;
	global.bossDamage = phase5Dmg;
}
if (hp <= 0 && phase == 5 && phase != maxPhase)
{
	phase++;
	hp = phase6Hp;
	moveSpeed = phase6Ms;
	global.bossDamage = phase6Dmg;
}
if (hp <= 0 && phase == maxPhase)
{
	//boss
	if (instance_exists(par_bossStuff)){with(par_bossStuff){instance_destroy();}}
	gameMaster.menu = Menues.BossSlain;
	if (gameMaster.chosenClass == Character.ShadowAssassin){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.TheRedWarrior){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Pyromancer){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Shopkeeper){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.BloodKnight){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.AgentOfGod){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.AngelSlayer){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Graveling){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.PlaugeWalker){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.RainbowSlime){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	game_save(global.saveFile);
	instance_destroy();
}
#endregion