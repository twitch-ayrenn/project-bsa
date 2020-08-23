/// @description Insert description here
#region Visuals & Variables
globalvar attack;
if (startUpVars == true)
{
	startUpVars = false;
	attack = 0;
}
randomize();
var sizeX = size;
if (x < global.player.x && distance_to_object(global.player) > 3){sizeX = size;}
if (x > global.player.x && distance_to_object(global.player) > 3){sizeX = -size;}
image_xscale = sizeX;
image_yscale = size;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y;
image_alpha = alpha;
if (image_blend = c_red)
{
	image_blend = c_white;	
}
if (state == BossStates.BeforeFight)
{
	sprite_index = idleSprite;
}
#region Demon Lord Rektaar
if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
{
	rotation1 -= 2;
	rotation2 += 1;
	rotation3 -= 1;
}
#endregion
#region Particles
	#region Wisp Sisters Julia
	if (gameMaster.chosenBoss == Boss.WispSisterJulia && speed > 2)
	{
		var demonShade = instance_create_depth(x,y,depth+15,obj_particle_dash_characterFollow);
		demonShade.fadeSpeed = 0.15;//0.15
		demonShade.sprite_index = sprite_index;
		demonShade.image_xscale = image_xscale;
		demonShade.image_yscale = image_yscale;
		demonShade.image_angle = image_angle;
		demonShade.image_alpha = image_alpha;
		demonShade.image_speed = image_speed;
		demonShade.image_alpha = 0.6;
	}
	#endregion
	#region Death Knight
	if (gameMaster.chosenBoss == Boss.DeathKnight && speed > 2)
	{
		var demonShade = instance_create_depth(x,y,depth+15,obj_particle_dash_characterFollow);
		demonShade.fadeSpeed = 0.15;//0.15
		demonShade.sprite_index = sprite_index;
		demonShade.image_xscale = image_xscale;
		demonShade.image_yscale = image_yscale;
		demonShade.image_angle = image_angle;
		demonShade.image_alpha = image_alpha;
		demonShade.image_speed = image_speed;
		demonShade.image_alpha = 0.6;
	}
	#endregion
	#region Gravekeeper
	if (gameMaster.chosenBoss == Boss.Gravekeeper && speed > 3)
	{
		var demonShade = instance_create_depth(x,y,depth+15,obj_particle_dash_characterFollow);
		demonShade.fadeSpeed = 0.15;//0.15
		demonShade.sprite_index = sprite_index;
		demonShade.image_xscale = image_xscale;
		demonShade.image_yscale = image_yscale;
		demonShade.image_angle = image_angle;
		demonShade.image_alpha = image_alpha;
		demonShade.image_speed = image_speed;
	}
	#endregion
#endregion
#endregion
#region Fighting
if (state == BossStates.Fighting)
{
#region Movement
actualSpeed = moveSpeed;
if (moveType == MovementType.WalkingTowards && fall == false)
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
	if (gameMaster.chosenBoss == Boss.FlameGate && global.player.class != Character.AgentOfGod)
	{
		x = global.arenaMiddleX;
		y = global.arenaMiddleY-140;
	}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar && global.player.class != Character.AgentOfGod)
	{
		x = global.arenaMiddleX;
		y = global.arenaMiddleY;
	}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption && global.player.class != Character.AgentOfGod)
	{
		x = global.arenaMiddleX;
		y = global.arenaMiddleY;
	}
}
if (jump == true)
{
	y = clamp(y - 35, 0, global.arenaMiddleY+300);
	dealDamageOnFall = true;
}
if (fall == true)
{
	var fallSpeed = 30;
	y = clamp(y + fallSpeed, 0, targetY);

	with (global.player)
	{
		if (place_meeting(x,y,obj_indicator) && obj_allBoss.y >= obj_allBoss.targetY-fallSpeed && obj_allBoss.dealDamageOnFall == true && global.iFrame == false)
		{
			obj_allBoss.dealDamageOnFall = false;
			var target = global.player;
			var damageToTarget = 125*global.campaignDifficulty;
			if (gameMaster.chosenClass == Character.AngelSlayer){var damageToTarget = 80;}
			var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
			damageText.color = c_maroon;
			damageText.text = damageToTarget/10;
			target.hp -= damageToTarget*global.campaignDifficulty;
		}
		if (hp <= 0)
		{
			image_alpha = 0;
			normalAlpha = 0;
			var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
			//Main
			gooGround.speed = 0;
			//Visual
			gooGround.image_alpha = 1;
			if (gameMaster.chosenClass == Character.ShadowAssassin){gooGround.image_blend = c_purple;}
			if (gameMaster.chosenClass == Character.AgentOfGod){gooGround.image_blend = c_teal;}
			if (gameMaster.chosenClass == Character.AngelSlayer){gooGround.image_blend = c_black;}
			if (gameMaster.chosenClass == Character.BloodKnight){gooGround.image_blend = c_maroon;}
			if (gameMaster.chosenClass == Character.Graveling){gooGround.image_blend = c_dkgray;}
			if (gameMaster.chosenClass == Character.Pyromancer){gooGround.image_blend = global.orange;}
			if (gameMaster.chosenClass == Character.PlaugeWalker){gooGround.image_blend = c_green;}
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 0.15;
			gooGround.image_yscale = gooGround.image_xscale;
			gooGround.destroy = false;
		}
	}
	
	if (y >= targetY)
	{
		fall = false;
		var nearestIndicator = instance_nearest(targetX,targetY,obj_indicator);
		if(instance_exists(obj_indicator)){instance_destroy(nearestIndicator);}	
		with(obj_camera){shake_remain = 6;}
	}
}
#endregion
#region Ongoing things
	#region The Corrupter
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
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
			corruptKlot.image_blend = global.lightBlue;
			corruptKlot.sprite_index = spr_bloodKlott;
			corruptKlot.image_xscale = 1.1;
			corruptKlot.image_yscale = 1.1;
			corruptKlot.effectType = Effect.Flare;
		
			alarm[2] = (0.75)*30;
		}
	}
	#endregion
	#region WispSister Julia
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
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
			fireball.image_blend = c_aqua;
			fireball.sprite_index = spr_fireBall;
			fireball.image_xscale = 1;
			fireball.image_yscale = 1;
			fireball.effectType = Effect.Flare;
		
			alarm[2] = (0.65)*30;
		}
	}
	#endregion
	#region Demon Gate
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
		
			alarm[2] = (0.65)*30;
		}
	}
	#endregion
	#region Angel Slayer
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		if (activateAlarm5 == true && beamsToSpawn > 0)
		{
			activateAlarm5 = false;
			beamsToSpawn--;
			
			with(obj_camera){shake_remain = 2;}
			
			var beam = instance_create_depth(xBeamSpawn,global.arenaMiddleY-300,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = 270-90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = c_green;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.5;
			beam.image_yscale = 100;
			beam.maxSize = 2;
			beam.minSize = 0.25;
			beam.range = 2.5*30;
			beam.effectType = Effect.NoEffect;
			xBeamSpawn += 25;
			
			alarm[5] = alarm5Timer
		}
	}
	#endregion	
	#region Knight witch yi
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var corruptKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			corruptKlot.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			corruptKlot.speed = 5.5;
			corruptKlot.image_angle = corruptKlot.direction;
			//Visual
			corruptKlot.image_alpha = 0.85;
			corruptKlot.image_blend = c_fuchsia;
			corruptKlot.sprite_index = spr_swordShot;
			corruptKlot.image_xscale = 1.15;
			corruptKlot.image_yscale = 1.15;
			corruptKlot.effectType = Effect.NoEffect;
		
			alarm[2] = (0.65)*30;
		}
	}
	#endregion
	#region Angel Knight Oscar
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			drawArea = true;
			
			alarm[2] = (0.8)*30;
		}
	}
	#endregion
	#region Demon General Rektaar
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var fireBalls = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBalls.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			fireBalls.speed = 6;
			fireBalls.image_angle = fireBalls.direction+90;
			//Visual
			fireBalls.image_alpha = 0.85;
			fireBalls.image_blend = global.orange;
			fireBalls.sprite_index = spr_fireBall;
			fireBalls.image_xscale = 1;
			fireBalls.image_yscale = 1;
			fireBalls.effectType = Effect.Flare;
			
			if (phase == 2 || phase == 3)
			{
				var fireBalls2 = instance_create_depth(global.arenaMiddleX-175,global.arenaMiddleY,depth+1,obj_enemyProjectile);
				//Main
				fireBalls2.direction = point_direction(global.arenaMiddleX-175,global.arenaMiddleY,obj_allPlayer.x,obj_allPlayer.y);
				fireBalls2.speed = 6;
				fireBalls2.image_angle = fireBalls2.direction+90;
				//Visual
				fireBalls2.image_alpha = 0.85;
				fireBalls2.image_blend = c_yellow;
				fireBalls2.sprite_index = spr_fireBall;
				fireBalls2.image_xscale = 1;
				fireBalls2.image_yscale = 1;
				fireBalls2.effectType = Effect.Flare;
			}
			if (phase == 3)
			{			
				var fireBalls3 = instance_create_depth(global.arenaMiddleX+175,global.arenaMiddleY,depth+1,obj_enemyProjectile);
				//Main
				fireBalls3.direction = point_direction(global.arenaMiddleX+175,global.arenaMiddleY,obj_allPlayer.x,obj_allPlayer.y);
				fireBalls3.speed = 6;
				fireBalls3.image_angle = fireBalls3.direction+90;
				//Visual
				fireBalls3.image_alpha = 0.85;
				fireBalls3.image_blend = c_yellow;
				fireBalls3.sprite_index = spr_fireBall;
				fireBalls3.image_xscale = 1;
				fireBalls3.image_yscale = 1;
				fireBalls3.effectType = Effect.Flare;
			}
		
			alarm[2] = (0.8)*30;
		}
	}
	#endregion
	#region Gravekeeper
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			
			x = choose(global.arenaMiddleX,global.arenaMiddleX-125,global.arenaMiddleX+125);
			y = choose(global.arenaMiddleY,global.arenaMiddleY-125,global.arenaMiddleY+125);
			if (x == global.arenaMiddleX && y == global.arenaMiddleY){x = choose(global.arenaMiddleX-125,global.arenaMiddleX+125);}
		
			var graveScyhte = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			graveScyhte.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			graveScyhte.speed = 4.5;
			graveScyhte.image_angle = graveScyhte.direction+90;
			//Visual
			graveScyhte.image_alpha = 0.85;
			graveScyhte.image_blend = c_white;
			graveScyhte.sprite_index = spr_graveScythe_projectile;
			graveScyhte.image_xscale = 0.55;
			graveScyhte.image_yscale = 0.55;
			graveScyhte.effectType = Effect.NoEffect;
		
			alarm[2] = (0.65)*30;
		}
	}
	#endregion
	#region Bloodarmy General
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			drawArea = true;
			
			alarm[2] = (0.8)*30;
		}
	}
	#endregion
	#region Statue Of Corruption and Arena King
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			
			if (gameMaster.chosenBoss == Boss.ArenaKing){moveSpeed = 0;}
		
			var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			var circleAmount = 14;
			repeat(circleAmount)
			{
				var swordShot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
				//Main
				swordShot.direction = angleBk;
				swordShot.speed = 1.65;
				swordShot.image_angle = swordShot.direction+90;
				//Visual
				swordShot.image_alpha = 0.85;
				swordShot.sprite_index = spr_fireBall;
				swordShot.image_blend = global.lightBlue;
				swordShot.image_xscale = 0.7;
				swordShot.image_yscale = 0.7;
				swordShot.effectType = Effect.Flare;
				angleBk += (360/circleAmount);
				
				if (gameMaster.chosenBoss == Boss.ArenaKing){swordShot.image_blend = global.goldColor;}
			}
			if (gameMaster.chosenBoss == Boss.ArenaKing)
			{
				var angleBk = point_direction(kingCloneX,kingCloneY,obj_allPlayer.x,obj_allPlayer.y);
				var circleAmount = 14;
				repeat(circleAmount)
				{
					var swordShot = instance_create_depth(kingCloneX,kingCloneY,depth+1,obj_enemyProjectile);
					//Main
					swordShot.direction = angleBk;
					swordShot.speed = 1.65;
					swordShot.image_angle = swordShot.direction+90;
					//Visual
					swordShot.image_alpha = 0.85;
					swordShot.sprite_index = spr_fireBall;
					swordShot.image_blend = global.goldColor;
					swordShot.image_xscale = 0.7;
					swordShot.image_yscale = 0.7;
					swordShot.effectType = Effect.Flare;
					angleBk += (360/circleAmount);
				}
			}
		
			alarm[2] = (0.6)*30;
		}
	}
	#endregion
	#region WispSister Jana
	if (gameMaster.chosenBoss == Boss.WispSisters)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			
			with(obj_camera){shake_remain = 1;}
		
			var fireball = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireball.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			fireball.speed = 6;
			fireball.image_angle = fireball.direction+90;
			//Visual
			fireball.image_alpha = 0.85;
			fireball.image_blend = c_aqua;
			fireball.sprite_index = spr_fireBall;
			fireball.image_xscale = 2;
			fireball.image_yscale = 2;
			fireball.effectType = Effect.Flare;
		
			alarm[2] = (0.75)*30;
		}
	}
	#endregion
	#region Demon Queen's Head
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var coneWide = 30;
			var coneAtkFW = point_direction(x+20,y-29,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.50;
			var coneAmount = 3;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x+20,y-29,depth+1,obj_enemyProjectile);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 4.5;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.8;
				fireBolt.sprite_index = spr_fireBall;
				fireBolt.image_blend = c_lime;
				fireBolt.image_xscale = 1;
				fireBolt.image_yscale = 1;
				fireBolt.effectType = Effect.Flare;
				coneAtkFW += (coneWide/coneAmount);
			}
			
			var coneWide = 30;
			var coneAtkFW = point_direction(x-20,y-29,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.50;
			var coneAmount = 3;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x-20,y-29,depth-1,obj_enemyProjectile);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 4.5;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.8;
				fireBolt.sprite_index = spr_fireBall;
				fireBolt.image_blend = c_lime;
				fireBolt.image_xscale = 1;
				fireBolt.image_yscale = 1;
				fireBolt.effectType = Effect.Flare;
				coneAtkFW += (coneWide/coneAmount);
			}
		
			alarm[2] = (0.75)*30;
		}
	}
	#endregion
	#region Death King
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
		
			var coneWide = 75;
			var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
			var coneAmount = 4;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 3.5;
				//Visual
				fireBolt.image_alpha = 1;
				fireBolt.sprite_index = spr_bat;
				fireBolt.image_blend = c_gray;
				fireBolt.image_xscale = 0.75;
				fireBolt.image_yscale = 0.75;
				fireBolt.effectType = Effect.NoEffect;
				coneAtkFW += (coneWide/coneAmount);
			}
		
			alarm[2] = (0.6)*30;
		}
	}
	#endregion
	#region Slime Queen
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{
		if (rapidFireStacks > 0 && canRapidAttack == true)
		{
			canRapidAttack = false;
			rapidFireStacks -= 1;
			
			with(obj_camera){shake_remain = 1;}
		
			var slime = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			slime.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			slime.speed = 6.25;
			//Visual
			slime.image_alpha = 1;
			slime.image_blend = global.lightBlue;
			slime.sprite_index = spr_slime;
			slime.image_xscale = 0.75;
			slime.image_yscale = 0.75;
			slime.effectType = Effect.NoEffect;
		
			alarm[2] = (0.75)*30;
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
	if (gameMaster.chosenBoss == Boss.TheCorrupter && phase == 1){attack = choose(Atks.BeamAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter && phase == 2){attack = choose(Atks.BeamAttack,Atks.RapidFire);}
	#endregion
	#region Tier2 Bosses
	if (gameMaster.chosenBoss == Boss.WispSisterJulia && phase == 1){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.WispSisterJulia && phase == 2){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisterJulia && phase == 3){attack = choose(Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.FlameGate && phase == 1){attack = choose(Atks.RapidFire,Atks.RapidFire,Atks.ConeAttack,Atks.OneShotAttack,Atks.GooSpawn);
	with(obj_enemyProjectile){if (sprite_index == gooSprite && image_xscale >= 2.5){with(obj_allBoss){attack = choose(Atks.RapidFire,Atks.RapidFire,Atks.ConeAttack,Atks.OneShotAttack);}}}}
	if (gameMaster.chosenClass == Character.ShadowAssassin || gameMaster.chosenClass == Character.AngelSlayer)
	{
		if (gameMaster.chosenBoss == Boss.FlameGate && phase == 1){attack = choose(Atks.RapidFire,Atks.ConeAttack,Atks.OneShotAttack,Atks.GooSpawn);
		with(obj_enemyProjectile){if (sprite_index == gooSprite && image_xscale >= 2.5){with(obj_allBoss){attack = choose(Atks.RapidFire,Atks.ConeAttack,Atks.OneShotAttack);}}}}
	}
	
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 1){attack = choose(Atks.NormalShot);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 2){attack = choose(Atks.NormalShot,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 3){attack = choose(Atks.ChaseAttack,Atks.ChaseAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 4){attack = choose(Atks.NormalShot,Atks.ChaseAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKnight && phase == 4 && gameMaster.chosenClass != Character.ShadowAssassin){attack = choose(Atks.ChaseAttack);}
	#endregion
	#region Tier3 Bosses
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul && phase == 1){attack = choose(Atks.CircleAttack,Atks.BeamAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul && phase == 2){attack = choose(Atks.CircleAttack,Atks.BeamAttack,Atks.ZoneAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul && phase == 3){attack = choose(Atks.CircleAttack,Atks.ZoneAttack,Atks.TeleportAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.KnightWitchYi && phase == 1){attack = choose(Atks.CircleAttack,Atks.BeamAttack,Atks.ConeAttack,Atks.GooSpawn,Atks.RapidFire,Atks.TauntAttack);}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar && phase == 1){attack = choose(Atks.ConeAttack,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar && phase == 2){attack = choose(Atks.ConeAttack,Atks.CircleAttack,Atks.BeamAttack);}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar && phase == 3){attack = choose(Atks.ConeAttack,Atks.CircleAttack,Atks.BeamAttack,Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar && phase == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar && phase == 2){attack = choose(Atks.BeamAttack,Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar && phase == 3){attack = choose(Atks.BeamAttack,Atks.OneShotAttack,Atks.RapidFire);}
	#endregion
	#region Tier4 Bosses
	if (gameMaster.chosenBoss == Boss.Gravekeeper && phase == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack); alpha = 0; x += choose(50,0,-50); y += choose(50,0,-50);}
	if (gameMaster.chosenBoss == Boss.Gravekeeper && phase == 2 && instance_exists(obj_healZone) == false){attack = choose(Atks.ChaseAttack,Atks.NormalShot,Atks.HealAttack); alpha = 0; x += choose(50,0,-50); y += choose(50,0,-50);}
	if (gameMaster.chosenBoss == Boss.Gravekeeper && phase == 2 && instance_exists(obj_healZone) == true){attack = choose(Atks.ChaseAttack,Atks.NormalShot); alpha = 0; x += choose(50,0,-50); y += choose(50,0,-50);}
	if (gameMaster.chosenBoss == Boss.Gravekeeper && phase == 3 && instance_exists(obj_healZone) == false){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack,Atks.ChaseAttack,Atks.NormalShot,Atks.HealAttack); alpha = 0; x += choose(50,0,-50); y += choose(50,0,-50);}
	if (gameMaster.chosenBoss == Boss.Gravekeeper && phase == 3 && instance_exists(obj_healZone) == true){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack,Atks.ChaseAttack,Atks.NormalShot); alpha = 0; x += choose(50,0,-50); y += choose(50,0,-50);}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase == 1){attack = choose(Atks.RapidFire,Atks.ConeAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase == 2){attack = choose(Atks.RapidFire,Atks.ConeAttack,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase == 3){attack = choose(Atks.RapidFire,Atks.ConeAttack,Atks.GooSpawn,Atks.OneShotAttack);}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase == 4){attack = choose(Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption && phase == 1){attack = choose(Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption && phase == 2){attack = choose(Atks.RapidFire,Atks.CircleAttack,Atks.ConeAttack);}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption && phase == 3){attack = choose(Atks.RapidFire,Atks.CircleAttack,Atks.ConeAttack,Atks.BeamAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisters && phase == 1){attack = choose(Atks.ConeAttack,Atks.OneShotAttack,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisters && phase == 2){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisters && phase == 3){attack = choose(Atks.CircleAttack,Atks.ChaseAttack,Atks.GooSpawn,Atks.TeleportAttack,Atks.ConeAttack,Atks.OneShotAttack);}
	if (gameMaster.chosenBoss == Boss.WispSisters && phase == 4){attack = Atks.RapidFire;}
	#endregion
	#region Tier5 Bosses
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase == 1 && global.player.meteorStun == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase == 2 && global.player.meteorStun == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.ChaseAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase >= 3 && global.player.meteorStun == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.ChaseAttack,Atks.TeleportAttack,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase == 1 && global.player.meteorStun == 0){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack);}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase == 2 && global.player.meteorStun == 0){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && phase >= 3 && global.player.meteorStun == 0){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.TeleportAttack,Atks.CircleAttack);}
	
	if (gameMaster.chosenBoss == Boss.DeathKing && phase == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKing && phase == 2){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack,Atks.BeamAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKing && phase == 3){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.ConeAttack,Atks.BeamAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.DeathKing && phase >= 4){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.BeamAttack,Atks.ChaseAttack,Atks.TeleportAttack);}
	
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 1){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 2){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 3){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn,Atks.CircleAttack,Atks.ConeAttack);}
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 4){attack = choose(Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 5){attack = choose(Atks.OneShotAttack,Atks.RapidFire,Atks.GooSpawn,Atks.CircleAttack,Atks.ConeAttack,Atks.ChaseAttack);}
	#endregion
	#region Tier6 Bosses
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 1){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack);}
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 2){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 3){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack);}
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 4){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 5){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 6){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn,Atks.ConeAttack);}
	if (gameMaster.chosenClass == Character.AngelSlayer)
	{
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 1){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack);}
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 2){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack);}
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 3){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack);}
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 4){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack,Atks.OneShotAttack,Atks.TeleportAttack);}
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 5){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn);}
		if (gameMaster.chosenBoss == Boss.ArenaKing && phase == 6){attack = choose(Atks.CircleAttack,Atks.NormalShot,Atks.ChaseAttack,Atks.BeamAttack,Atks.RapidFire,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn,Atks.ConeAttack,Atks.CircleAttack,Atks.NormalShot,Atks.BeamAttack,Atks.OneShotAttack,Atks.TeleportAttack,Atks.GooSpawn,Atks.ConeAttack);}
	}
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
		#region Gravekeeper
		if (gameMaster.chosenBoss == Boss.Gravekeeper)
		{
			speed = dashSpeed;
			
			alarm[4] = (1.9)*30;
		}
		#endregion
	}
	if (attack == Atks.CircleAttack)
	{
		sprite_index = circleSprite;		
		attackColor = c_fuchsia;
		#region AngelSlayerRekZul
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul  || gameMaster.chosenBoss == Boss.ArenaKing)
		{
			drawArea = true;
		}
		#endregion
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region Statue Of Corruption
		if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
		{
			drawArea = true;
		}
		#endregion
		#region Arena King
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			moveSpeed = 0;
		}
		#endregion
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
			indicator.image_xscale = 0.2;
			indicator.image_yscale = 0.2;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region WispSisterAnna
		if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
		{
			globalvar indicatorX;
			globalvar indicatorY;
			indicatorX = global.player.x;
			indicatorY = global.player.y;
			var indicator = instance_create_depth(global.player.x,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.25;
			indicator.image_yscale = 0.25;
			indicator.image_blend = c_maroon;
		}
		#endregion
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region Bloodarmy general
		if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
		{
			var indicator = instance_create_depth(global.player.x,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.16;
			indicator.image_yscale = 0.16;
			indicator.image_blend = c_maroon;
		}
		#endregion
		#region Slime Queen
		if (gameMaster.chosenBoss == Boss.SlimeQueen)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.215;
			indicator.image_yscale = 0.215;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region Arena King
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.15;
			indicator.image_yscale = 0.15;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
			
			var indicator = instance_create_depth(kingCloneX,kingCloneY,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.15;
			indicator.image_yscale = 0.15;
			indicator.image_blend = c_maroon;
		}
		#endregion
	}
	if (attack == Atks.ConeAttack)
	{
		sprite_index = coneSprite;		
		attackColor = c_aqua;
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
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
		#region Wisp Sister Anna
		if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
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
		#region AngelSlayerRekZul
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
		{
			var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = -90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = c_yellow;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.5;
			beam.image_yscale = 20;
			beam.maxSize = 2;
			beam.minSize = 0.25;
			beam.stickOn = true;
			beam.beamChase = true;
			beam.turningSpeed = 85;
			beam.destroy = false;
			beam.effectType = Effect.NoEffect;
		}
		#endregion
		#region Gravekeeper
		if (gameMaster.chosenBoss == Boss.Gravekeeper)
		{
			alpha = 0.75;
			moveSpeed = 1.35;
			with(obj_bossMeleeWeapon)
			{
				state = MeleeWeaponStates.SpinChase;
			}
		}
		#endregion
		#region Bloodarmy General
		if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase != 4)
		{
			with(obj_spinBeam)
			{
				spinSpeed = 3;	
			}
		}
		#endregion
		#region Demon Queens Head
		if (gameMaster.chosenBoss == Boss.DemonQueensHead)
		{
			with(obj_enemyProjectile)
			{
				if (sprite_index == spr_beam){instance_destroy();}
			}
			
			var indicator = instance_create_depth(global.player.x,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.1;
			indicator.image_yscale = 0.1;
			indicator.image_blend = c_maroon;
			indicator.followPlayer = true;
			
			with(obj_camera){shake_remain = 6;}
			jump = true;
		}
		#endregion
	}
	if (attack == Atks.RapidFire)
	{
		sprite_index = rapidFireSprite;
		attackColor = global.lightBlue;
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
	}
	if (attack == Atks.BeamAttack)
	{
		sprite_index = beamSprite;
		attackColor = global.orange;
		drawArea = true;
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
		}
		#endregion
		#region Demon General
		if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
		{
			var beam = instance_create_depth(global.arenaMiddleX-400,global.arenaMiddleY,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = 0;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = global.orange;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.5;
			beam.image_yscale = 40;
			beam.maxSize = 2;
			beam.minSize = 0.25;
			beam.stickOn = true;
			beam.beamChase = true;
			beam.turningSpeed = 15;
			beam.destroy = true;
			beam.effectType = Effect.NoEffect;
		}
		#endregion
		#region DeathKing
		if (gameMaster.chosenBoss == Boss.DeathKing)
		{
			var beam = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-400,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = 60-90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = global.orange;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.5;
			beam.image_yscale = 50;
			beam.maxSize = 2.5;
			beam.minSize = 0.25;
			beam.stickOn = true;
			beam.beamChase = true;
			beam.turningSpeed = -15;
			beam.range = 12*30;
			beam.destroy = true;
			beam.effectType = Effect.NoEffect;
			
			var beam1 = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-400,depth+1,obj_enemyProjectile);
			//Main
			beam1.image_angle = 120-90;
			//Visual
			beam1.image_alpha = 0.85;
			beam1.image_blend = global.orange;
			beam1.sprite_index = spr_beam;
			beam1.image_xscale = 0.5;
			beam1.image_yscale = 50;
			beam1.maxSize = 2.5;
			beam1.minSize = 0.25;
			beam1.stickOn = true;
			beam1.beamChase = true;
			beam1.turningSpeed = -15;
			beam1.range = 12*30;
			beam1.destroy = true;
			beam1.effectType = Effect.NoEffect;
			
			var beam2 = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-400,depth+1,obj_enemyProjectile);
			//Main
			beam2.image_angle = 180-90;
			//Visual
			beam2.image_alpha = 0.85;
			beam2.image_blend = global.orange;
			beam2.sprite_index = spr_beam;
			beam2.image_xscale = 0.5;
			beam2.image_yscale = 50;
			beam2.maxSize = 2.5;
			beam2.minSize = 0.25;
			beam2.stickOn = true;
			beam2.beamChase = true;
			beam2.turningSpeed = -15;
			beam2.range = 12*30;
			beam2.destroy = true;
			beam2.effectType = Effect.NoEffect;
		}
		#endregion
		#region Arena King
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			moveSpeed = 0;
		}
		#endregion
	}
	if (attack == Atks.TeleportAttack)
	{
		sprite_index = teleportSprite;
		attackColor = global.purple;
		#region Wisp Sisters and Blood Knight David
		if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.BloodKnightDavid || gameMaster.chosenBoss == Boss.WispSisters)
		{
			alpha = 0;
			var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
			var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
			if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
			if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
		}
		#endregion
		#region Death Knight
		if (gameMaster.chosenBoss == Boss.DeathKnight)
		{
			var indicator = instance_create_depth(global.player.x+45,global.player.y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.08;
			indicator.image_yscale = 0.08;
			indicator.image_blend = c_maroon;
			indicator.followPlayer = true;
			
			var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
			var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
			if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
			if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
			
			alpha = 0;
			
			var tpEffect = instance_create_depth(x,y,depth,obj_particle_tpEffect);
			tpEffect.image_xscale = 1;
			tpEffect.image_yscale = 1;
			tpEffect.normalAlpha = 1;
			tpEffect.image_blend = c_purple;
			tpEffect.objectToInheritFrom = id;
			tpEffect.grow = -0.6;
			tpEffect.maxGrowth = 1.1;
			tpEffect.objectType = "boss";
			tpEffect.switchOnce = false;
		}
		#endregion
		#region Angel Slayer
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
		{		
			var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
			var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
			if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
			if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
			alpha = 0;
			
			var tpEffect = instance_create_depth(x,y,depth,obj_particle_tpEffect);
			tpEffect.image_xscale = 1;
			tpEffect.image_yscale = 1;
			tpEffect.normalAlpha = 1;
			tpEffect.image_blend = c_purple;
			tpEffect.objectToInheritFrom = id;
			tpEffect.grow = -0.6;
			tpEffect.maxGrowth = 1.1;
			tpEffect.objectType = "boss";
			tpEffect.switchOnce = false;
		}
		#endregion
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			alpha = 0;
		}
	}
	if (attack == Atks.ZoneAttack)
	{
		sprite_index = zoneSprite;		
		attackColor = c_green;
		#region AngelSlayerRekZul
		if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
		{
			drawArea = true;
		}
		#endregion
	}
	if (attack == Atks.TauntAttack)
	{
		sprite_index = tauntSprite;		
		attackColor = c_dkgray;
		#region KnightWitch yi
		if (gameMaster.chosenBoss == Boss.KnightWitchYi)
		{
			var indicator = instance_create_depth(x,y,-5,obj_indicator)
			indicator.sprite_index = spr_damageCircle;
			indicator.image_xscale = 0.085;
			indicator.image_yscale = 0.085;
			indicator.image_blend = c_maroon;
			indicator.follow = true;
			global.playerBossSlow = 0.8;
		}
		#endregion
	}
	if (attack == Atks.HealAttack)
	{
		sprite_index = healSprite;		
		attackColor = c_lime;
		#region Angel Knight Oscar
		if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
		{
			instance_create_depth(global.arenaMiddleX-200,global.arenaMiddleY,depth,obj_healSlime);
			instance_create_depth(global.arenaMiddleX+200,global.arenaMiddleY,depth,obj_healSlime);
			instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-175,depth,obj_healSlime);
		}
		#endregion
		#region Gravekeeper
		if (gameMaster.chosenBoss == Boss.Gravekeeper)
		{
			var healZone = instance_create_depth(x,y,-5,obj_healZone);
			healZone.image_blend = c_lime;
		}
		#endregion
	}
	alarm[0] = timeAfterIndicate;
	alarm[1] = attackCooldown*choose(1,1,1,1,2);
	if (gameMaster.chosenBoss == Boss.SlimeQueen && phase == 4){alarm[0] = (0.85)*30;alarm[1] = (1)*30;}
	if (gameMaster.chosenBoss == Boss.ArenaKing && attack == Atks.ChaseAttack){alarm[0] = (1.5)*30;}
	if (global.colorBlindText == true)
	{
		var damageDealt = "";
		if (attack == Atks.NormalShot){damageDealt = "Normal Attack";}
		if (attack == Atks.CircleAttack){damageDealt = "Circle Attack";}
		if (attack == Atks.GooSpawn){damageDealt = "Goo Spawn";}
		if (attack == Atks.ConeAttack){damageDealt = "Cone Attack";}
		if (attack == Atks.OneShotAttack){damageDealt = "One Shot";}
		if (attack == Atks.ChaseAttack){damageDealt = "Chase Attack";}
		if (attack == Atks.RapidFire){damageDealt = "Rapid Fire Attacks";}
		if (attack == Atks.BeamAttack){damageDealt = "Laser Beam Attack";}
		if (attack == Atks.TeleportAttack){damageDealt = "Teleport Attack";}
		if (attack == Atks.HealAttack){damageDealt = "Heal Attack";}
		if (attack == Atks.ZoneAttack){damageDealt = "Be Ready To Run!";}
		if (attack == Atks.TauntAttack){damageDealt = "Taunt Attack";}
		var damageText = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(-13,13),depth-10,obj_textMaker);
		damageText.color = c_fuchsia;
		damageText.text = damageDealt;
	}
}
#endregion
}
#endregion
#region Phases & Death
if (hp <= 0 && phase == 1 && phase != maxPhase)
{
	phase = 2;
	hp = phase2Hp;
	moveSpeed = phase2Ms;
	global.bossDamage = phase2Dmg;
	#region The Corrupter 1
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
	{
		var middleGooSpawn = instance_nearest(645,590,obj_enemyProjectile);
		with (middleGooSpawn)
		{
			image_xscale = 0.65;
			image_yscale = image_xscale;
		}
	}
	#endregion
	#region Gravekeeper
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		normalAlpha = 0.5;
	}
	#endregion
	#region Bloodarmy General
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		with(obj_spinBeam)
		{
			spinSpeed = 2;	
		}
	}
	#endregion
	#region Wisp Sisters Janna
	if (gameMaster.chosenBoss == Boss.WispSisters)
	{
		circleSprite = janaPhase2Circle;
	}
	#endregion
	#region SlimeQueen
	if (gameMaster.chosenBoss == Boss.SlimeQueen && instance_exists(obj_enemyProjectile))
	{
		with (obj_enemyProjectile)
		{
			if (sprite_index == gooSprite)
			{
				instance_destroy();	
			}
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
	#region Gravekeeper
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		normalAlpha = 0.3;
	}
	#endregion
	#region Wisp Sisters Janna
	if (gameMaster.chosenBoss == Boss.WispSisters)
	{
		circleSprite = janaPhase3Circle;
		coneSprite = janaPhase3Cone
		oneShotSprite = janaPhase3OneShot;
		gooSprite = janaPhase3Goo;
		teleportSprite = janaPhase3Teleport;
		chaseSprite = janaPhase3Chase;
	}
	#endregion
	#region SlimeQueen
	if (gameMaster.chosenBoss == Boss.SlimeQueen && instance_exists(obj_enemyProjectile))
	{
		with (obj_enemyProjectile)
		{
			if (sprite_index == gooSprite)
			{
				instance_destroy();	
			}
		}
	}
	#endregion
}
if (hp <= 0 && phase == 3 && phase != maxPhase)
{
	phase++;
	hp = phase4Hp;
	moveSpeed = phase4Ms;
	global.bossDamage = phase4Dmg;
	#region Bloodarmy General
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		with(obj_spinBeam)
		{
			spinSpeed = 4.25;	
		}
	}
	#endregion
	#region SlimeQueen
	if (gameMaster.chosenBoss == Boss.SlimeQueen && instance_exists(obj_enemyProjectile))
	{
		var indicator = instance_create_depth(global.player.x,global.player.y,-5,obj_indicator)
		indicator.sprite_index = spr_damageCircle;
		indicator.image_xscale = 0.1;
		indicator.image_yscale = 0.1;
		indicator.image_blend = c_maroon;
		indicator.followPlayer = true;
			
		with(obj_camera){shake_remain = 6;}
		jump = true;
		
		with (obj_enemyProjectile)
		{
			if (sprite_index == gooSprite)
			{
				instance_destroy();	
			}
		}
	}
	#endregion
}
if (hp <= 0 && phase == 4 && phase != maxPhase)
{
	phase++;
	hp = phase5Hp;
	moveSpeed = phase5Ms;
	global.bossDamage = phase5Dmg;
	#region SlimeQueen
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{	
		with (obj_indicator){followPlayer = false;}
		
		targetX = global.player.x;
		targetY = global.player.y;
		
		x = targetX;
		y = global.player.y-400;
		
		fall = true;
		jump = false;
	}
	#endregion
}
if (hp <= 0 && phase == 5 && phase != maxPhase && gameMaster.chosenBoss != Boss.ArenaKing && gameMaster.chosenMode == Menues.Campaign)
{
	phase++;
	hp = phase6Hp;
	moveSpeed = phase6Ms;
	global.bossDamage = phase6Dmg;
}
if (hp <= 0 && phase == 5 && phase != maxPhase && gameMaster.chosenBoss == Boss.ArenaKing && gameMaster.chosenMode == Menues.Campaign)
{
	if (instance_exists(par_bossStuff)){with(par_bossStuff){instance_destroy();}}
	instance_destroy();
	var chest = instance_create_depth(global.arenaMiddleX,-156,depth,obj_rewardChest);
	chest.kingSuprise = true;
	if (audio_is_playing(snd_music_victory) == false && global.musicOn == true)
	{
		audio_stop_sound(snd_music_victory);
		audio_play_sound(snd_music_victory,10,true);
		audio_sound_gain(snd_music_victory,0,0);
		audio_sound_gain(snd_music_victory,global.musicVolume,(5)*1000);
	}
	gameMaster.menu = Menues.BossSlain;
}
if (hp <= 0 && phase == maxPhase && gameMaster.menu != Menues.Death && gameMaster.chosenMode == Menues.Campaign)
{
	//boss
	if (instance_exists(par_bossStuff)){with(par_bossStuff){instance_destroy();}}
	global.campaignDifficulty += 0.05;
	global.campaignDifficulty = clamp(global.campaignDifficulty,global.minDifficulty,global.maxDifficulty);
	#region Items
	if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.assassinItems[gameMaster.chosenBoss] = true;
		gameMaster.assassinProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossAssassinUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.pyromancerItems[gameMaster.chosenBoss] = true;
		gameMaster.pyromancerProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossPyromancerUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.bloodKnightItems[gameMaster.chosenBoss] = true;
		gameMaster.bloodKnightProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossPyromancerUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.plaugeWalkerItems[gameMaster.chosenBoss] = true;
		gameMaster.plaugeWalkerProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossPlaugeWalkerUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.AgentOfGod && gameMaster.agentOfGodItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.agentOfGodItems[gameMaster.chosenBoss] = true;
		gameMaster.agentOfGodProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossAgentOfGodUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.gravelingItems[gameMaster.chosenBoss] = true;
		gameMaster.gravelingProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossGravelingUnlocked = true;}}
	}
	if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerItems[gameMaster.chosenBoss] == false)
	{
		gameMaster.angelSlayerItems[gameMaster.chosenBoss] = true;
		gameMaster.angelSlayerProgress += global.progressAmount;
		gameMaster.totalProgress += 1;
		if (gameMaster.chosenBoss == Boss.ArenaKing){with(gameMaster){bossAngelSlayerUnlocked = true;}}
	}
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		global.tutorial = false;	
	}
	if (gameMaster.chosenBoss == Boss.DeathKnight){global.itemDeathScythe = true;}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar){global.itemImpling = true;}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption){global.itemLootBox = true;}
	if (gameMaster.chosenBoss == Boss.ArenaKing)
	{
		with (gameMaster)
		{
			//Unlocked
			assassinUnlocked = true;		bloodKnightUnlocked = true;
			pyromancerUnlocked = true;		plaugeWalkerUnlocked = true;
			angelSlayerUnlocked = true;		agentOfGodUnlocked = true;		
			gravelingUnlocked = true;
		}
	}
	instance_create_depth(global.arenaMiddleX,-156,depth,obj_rewardChest);
	#endregion
	if (audio_is_playing(snd_music_victory) == false && global.musicOn == true)
	{
		audio_stop_sound(snd_music_victory);
		audio_play_sound(snd_music_victory,10,true);
		audio_sound_gain(snd_music_victory,0,0);
		audio_sound_gain(snd_music_victory,global.musicVolume,(5)*1000);
	}
	gameMaster.menu = Menues.BossSlain;
	game_save(global.saveFile);
	instance_destroy();
}
if (hp <= 0 && phase == maxPhase && gameMaster.menu != Menues.Death && gameMaster.chosenMode == Menues.BossRush)
{
	if (gameMaster.chosenBoss == Boss.ArenaKing)
	{
		global.itemBossRush = true;
		if (audio_is_playing(snd_music_victory) == false && global.musicOn == true)
		{
			audio_stop_sound(snd_music_victory);
			audio_play_sound(snd_music_victory,10,true);
			audio_sound_gain(snd_music_victory,0,0);
			audio_sound_gain(snd_music_victory,global.musicVolume,(5)*1000);
		}
		gameMaster.chosenBoss = Boss.BossRushReward;
		instance_create_depth(global.arenaMiddleX,-156,depth,obj_rewardChest);
		gameMaster.menu = Menues.BossSlain;
		game_save(global.saveFile);
	}
	if (instance_exists(par_bossStuff)){with(par_bossStuff){instance_destroy();}}
	if (gameMaster.chosenBoss != Boss.ArenaKing  || gameMaster.chosenBoss != Boss.BossRushReward)
	{
		gameMaster.chosenBoss += 1;
		var boss = instance_create_depth(global.arenaMiddleX+175,global.arenaMiddleY,-global.arenaMiddleY,obj_allBoss);
	}
	instance_destroy();
}

#endregion