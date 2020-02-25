/// @description Attacks
randomize();
#region ScreenShake
if (attack == Atks.BeamAttack || attack == Atks.OneShotAttack){with(obj_camera){shake_remain = 5;}}
if (attack == Atks.CircleAttack && gameMaster.chosenBoss == Boss.AngelSlayerRekZul){with(obj_camera){shake_remain = 5;}}
#endregion
#region Before Boss Attacks
if (gameMaster.chosenBoss == Boss.Gravekeeper)
{
	x = choose(global.arenaMiddleX,global.arenaMiddleX-125,global.arenaMiddleX+125);
	y = choose(global.arenaMiddleY,global.arenaMiddleY-125,global.arenaMiddleY+125);
	if (x == global.arenaMiddleX && y == global.arenaMiddleY){x = choose(global.arenaMiddleX-125,global.arenaMiddleX+125);}
	alpha = 0.75;
}
#endregion
#region Tier1
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var bloodKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		bloodKlot.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		bloodKlot.speed = 6 ;
		bloodKlot.image_angle = bloodKlot.direction;
		//Visual
		bloodKlot.image_alpha = 0.85;
		bloodKlot.image_blend = c_maroon;
		bloodKlot.sprite_index = spr_bloodKlott;
		bloodKlot.image_xscale = 1.5;
		bloodKlot.image_yscale = 1.5;
		bloodKlot.effectType = Effect.Flare;
	}
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 12;
		repeat(circleAmount)
		{
			var bloodKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			bloodKlot.direction = angleBk;
			bloodKlot.speed = 5;
			bloodKlot.image_angle = bloodKlot.direction;
			//Visual
			bloodKlot.image_alpha = 0.85;
			bloodKlot.sprite_index = spr_bloodKlott;
			bloodKlot.image_blend = c_maroon;
			bloodKlot.image_xscale = 1;
			bloodKlot.image_yscale = 1;
			bloodKlot.effectType = Effect.Smoke;
			angleBk += (360/circleAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.FlameWisp || gameMaster.chosenBoss == Boss.WispSisters)
	{
		var angleFC = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);;
		var circleAmount = 14;
		repeat(circleAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = angleFC;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = global.orange;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = 1;
			fireBolt.effectType = Effect.Flare;
			angleFC += (360/circleAmount);
		}
	}
}
#endregion
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 3.1;
		gooGround.image_yscale = 3.1;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
	{
		var middleGooSpawn = instance_nearest(645,590,obj_enemyProjectile);
		if (spawnThingOnce == true)
		{
			spawnThingOnce = false;
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = 90;
			//Visual
			gooGround.image_alpha = 0.75;
			gooGround.image_blend = global.purple;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 1.5;
			gooGround.image_yscale = 1.5;
			gooGround.destroy = false;
			gooGround.effectType = Effect.NoEffect;
		}
		if (spawnThingOnce == false)
		{
			with (middleGooSpawn)
			{
				image_xscale += clamp(0.4,0,2.5);
				image_yscale = image_xscale;
			}
		}
	}
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
	{
		var bottomGooSpawn = instance_nearest(global.arenaMiddleX,global.arenaMiddleY+125,obj_enemyProjectile);
		if (spawnThingOnce == true)
		{
			spawnThingOnce = false;
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY+125,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = 90;
			//Visual
			gooGround.image_alpha = 0.75;
			gooGround.image_blend = c_lime;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 2;
			gooGround.image_yscale = 2;
			gooGround.destroy = false;
			gooGround.effectType = Effect.NoEffect;
		}
		if (spawnThingOnce == false)
		{
			with (bottomGooSpawn)
			{
				image_xscale += clamp(0.6,0,2.5);
				image_yscale = image_xscale;
			}
		}
	}
}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameWisp || gameMaster.chosenBoss == Boss.WispSisters)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 3.75;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 2.5;
		infernalBall.image_yscale = 2.5;
		infernalBall.effectType = Effect.Spark;
	}
}
#endregion
#region Cone Attacks
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameWisp || gameMaster.chosenBoss == Boss.WispSisters)
	{
		
		var coneWide = 90;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90*0.5;
		var coneAmount = 6;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = global.orange;
			fireBolt.image_xscale = 1.2;
			fireBolt.image_yscale = 1.2;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
}
#endregion
#region Chase
if (attack == Atks.ChaseAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameWisp || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 2.5;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 2.5;
		infernalBall.image_yscale = 2.5;
		infernalBall.effectType = Effect.Smoke;
		infernalBall.chase = true;
		infernalBall.range = (6.5)*30;
		
		if (gameMaster.chosenBoss == Boss.ArenaKing && gameMaster.chosenClass != Character.AngelSlayer)
		{
			infernalBall.image_blend = global.goldColor;
			var infernalBall = instance_create_depth(kingCloneX,kingCloneY,depth+1,obj_enemyProjectile);
			//Main
			infernalBall.direction = point_direction(kingCloneX,kingCloneY,obj_allPlayer.x,obj_allPlayer.y);
			infernalBall.speed = 2.25;
			infernalBall.image_angle = infernalBall.direction+90;
			//Visual
			infernalBall.image_alpha = 0.85;
			infernalBall.image_blend = global.goldColor;
			infernalBall.sprite_index = spr_fireBall;
			infernalBall.image_xscale = 2.5;
			infernalBall.image_yscale = 2.5;
			infernalBall.effectType = Effect.Smoke;
			infernalBall.chase = true;
			infernalBall.range = (6.5)*30;
		}
	}
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	drawArea = false;
	if (gameMaster.chosenBoss == Boss.TheCorrupter && phase == 1)
	{
		drawArea = false;
		var angleBeamPlus = 0;
		var beamCircleAmount = 4;
		repeat (beamCircleAmount)
		{
			var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = angleBeamPlus-90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = global.orange;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.25;
			beam.image_yscale = 20;
			beam.maxSize = 2;
			beam.minSize = 0.25;
			beam.stickOn = true;
			beam.range = 5*30;
			beam.effectType = Effect.NoEffect;
			angleBeamPlus += (360/beamCircleAmount)
		}
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter && phase == 2)
	{
		drawArea = false;
		var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
		//Visual
		beam.image_alpha = 0.85;
		beam.image_blend = global.orange;
		beam.sprite_index = spr_beam;
		beam.image_xscale = 0.25;
		beam.image_yscale = 20;
		beam.maxSize = 2;
		beam.minSize = 0.25;
		beam.stickOn = true;
		beam.range = 2*30;
		beam.effectType = Effect.NoEffect;
	}
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
	{
		drawArea = false;
		var beam1 = instance_create_depth(topX,topY,depth+1,obj_enemyProjectile);
		beam1.image_angle = point_direction(topX,topY,obj_allPlayer.x,obj_allPlayer.y)-90;
		beam1.image_alpha = 0.75;
		if (position == 1){beam1.image_blend = c_yellow;}
		if (position == 2){beam1.image_blend = c_yellow;}
		if (position == 3){beam1.image_blend = global.orange;}
		beam1.sprite_index = spr_beam;
		beam1.image_xscale = 0.25;
		beam1.image_yscale = 20;
		beam1.maxSize = 1.25;
		beam1.minSize = 0.25;
		beam1.range = 2*30;
		beam1.effectType = Effect.NoEffect;
		
		var beam2 = instance_create_depth(leftX,leftY,depth+1,obj_enemyProjectile);
		beam2.image_angle = point_direction(leftX,leftY,obj_allPlayer.x,obj_allPlayer.y)-90;
		beam2.image_alpha = 0.85;
		if (position == 1){beam2.image_blend = c_lime;}
		if (position == 2){beam2.image_blend = global.orange;}
		if (position == 3){beam2.image_blend = c_lime;}
		beam2.sprite_index = spr_beam;
		beam2.image_xscale = 0.25;
		beam2.image_yscale = 20;
		beam2.maxSize = 1.25;
		beam2.minSize = 0.25;
		beam2.range = 2*30;
		beam2.effectType = Effect.NoEffect;
		
		var beam3 = instance_create_depth(rightX,rightY,depth+1,obj_enemyProjectile);
		beam3.image_angle = point_direction(rightX,rightY,obj_allPlayer.x,obj_allPlayer.y)-90;
		beam3.image_alpha = 0.85;
		if (position == 1){beam3.image_blend = global.orange;}
		if (position == 2){beam3.image_blend = c_lime;}
		if (position == 3){beam3.image_blend = c_yellow;}
		beam3.sprite_index = spr_beam;
		beam3.image_xscale = 0.25;
		beam3.image_yscale = 20;
		beam3.maxSize = 1.25;
		beam3.minSize = 0.25;
		beam3.range = 2*30;
		beam3.effectType = Effect.NoEffect;
		//Main
			
		//Visual
		
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
	{
		rapidFireStacks += 5;
	}
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
	{
		rapidFireStacks += 4;
	}
}
#endregion
#endregion
#region Tier2
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	if (gameMaster.chosenBoss == Boss.DeathKnight || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		obj_bossMeleeWeapon.state = MeleeWeaponStates.SpinOnce;
		obj_bossMeleeWeapon.spinTimes = phase;
		if (gameMaster.chosenBoss == Boss.ArenaKing){obj_bossMeleeWeapon.spinTimes += phase;}
	}
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
	{
		var angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 24;
		repeat(circleAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = angle;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = 1;
			fireBolt.effectType = Effect.Flare;
			angle += (360/circleAmount);
		}
	}
}
#endregion
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
	{
		
		var gooGround = instance_create_depth(obj_indicator.x,obj_indicator.y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_teal;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 4;
		gooGround.image_yscale = 4;
		gooGround.destroy = true;
		gooGround.effectType = Effect.NoEffect;
		with (gooGround)
		{
			var nearestIndicator = instance_nearest(x,y,obj_indicator);
			instance_destroy(nearestIndicator);
		}
	}
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		if (spawnThingOnce == true)
		{
			spawnThingOnce = false;
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY+135,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = 90;
			//Visual
			gooGround.image_alpha = 0.75;
			gooGround.image_blend = c_orange;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 2;
			gooGround.image_yscale = 2;
			gooGround.destroy = false;
			gooGround.effectType = Effect.NoEffect;
		}
		if (spawnThingOnce == false)
		{
			with (obj_enemyProjectile)
			{
				if (sprite_index == gooSprite)
				{
					image_xscale += clamp(0.75,0,2.5);
					image_yscale = image_xscale;
				}
			}
		}
	}
}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 4.25;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 3.5;
		infernalBall.image_yscale = 3.5;
		infernalBall.effectType = Effect.Spark;
	}
}
#endregion
#region ConeAttack
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameGate || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		
		var coneWide = 45;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 15;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 5;
			
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = global.orange;
			fireBolt.image_xscale = 1.2;
			fireBolt.image_yscale = 1.2;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
			
			if (gameMaster.chosenBoss == Boss.ArenaKing){fireBolt.speed = 3; fireBolt.image_blend = global.goldColor;}
		}
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			var coneWide = 45;
			var coneAtkFW = point_direction(kingCloneX,kingCloneY,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
			var coneAmount = 15;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(kingCloneX,kingCloneY,depth+1,obj_enemyProjectile);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 3;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.85;
				fireBolt.sprite_index = spr_fireBall;
				fireBolt.image_blend = global.goldColor;
				fireBolt.image_xscale = 1.2;
				fireBolt.image_yscale = 1.2;
				fireBolt.effectType = Effect.Flare;
				coneAtkFW += (coneWide/coneAmount);
			}
		}
	}
}
#endregion
#region ChaseAttack
if (attack == Atks.ChaseAttack)
{
	
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
	{
		rapidFireStacks += 10;
	}
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		rapidFireStacks += 8;
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.WispSisterJulia || gameMaster.chosenBoss == Boss.WispSisters)
	{
		alpha = normalAlpha;
		chooseAnAttack = true;
	}
	if (gameMaster.chosenBoss == Boss.DeathKnight)
	{
		if(instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
		obj_bossMeleeWeapon.image_angle = 270;
		x = global.player.x+45;
		y = global.player.y;
		obj_bossMeleeWeapon.state = MeleeWeaponStates.SpinOnce;
		obj_bossMeleeWeapon.spinTimes = phase;	
	}
}
#endregion
#endregion
#region Tier3
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul  || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		drawArea = false;
		var beamCircleAngle = 0;
		var circleBeams = 12;
		repeat(circleBeams)
		{
			var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = beamCircleAngle+90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = c_fuchsia;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.2;
			beam.image_yscale = 20;
			beam.maxSize = 1.5;
			if (gameMaster.chosenBoss == Boss.ArenaKing){beam.maxSize = 1.25;}
			beam.minSize = 0.2;
			beam.stickOn = true;
			beam.range = 1*30;
			beam.effectType = Effect.NoEffect;
			beamCircleAngle += 360/circleBeams;
			
			if (gameMaster.chosenBoss == Boss.ArenaKing){beam.image_blend = global.goldColor;}
		}
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			var beamCircleAngle = 0;
			var circleBeams = 12;
			repeat(circleBeams)
			{
				var beam = instance_create_depth(kingCloneX,kingCloneY,depth+1,obj_enemyProjectile);
				//Main
				beam.image_angle = beamCircleAngle+90;
				//Visual
				beam.image_alpha = 0.85;
				beam.image_blend = global.goldColor;
				beam.sprite_index = spr_beam;
				beam.image_xscale = 0.2;
				beam.image_yscale = 20;
				beam.maxSize = 1.25;
				beam.minSize = 0.2;
				beam.stickOn = false;
				beam.range = 1*30;
				beam.effectType = Effect.NoEffect;
				beamCircleAngle += 360/circleBeams;
			}
		}
	}
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 24;
		repeat(circleAmount)
		{
			var swordShot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			swordShot.direction = angleBk;
			swordShot.speed = 5;
			swordShot.image_angle = swordShot.direction;
			//Visual
			swordShot.image_alpha = 0.85;
			swordShot.sprite_index = spr_swordShot;
			swordShot.image_blend = c_fuchsia;
			swordShot.image_xscale = 1.15;
			swordShot.image_yscale = 1.15;
			swordShot.effectType = Effect.NoEffect;
			angleBk += (360/circleAmount);
		}
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 50;
		repeat(circleAmount)
		{
			var swordShot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			swordShot.direction = angleBk;
			swordShot.speed = 2.5;
			swordShot.image_angle = swordShot.direction+90;
			//Visual
			swordShot.image_alpha = 0.85;
			swordShot.sprite_index = spr_fireBall;
			swordShot.image_blend = c_fuchsia;
			swordShot.image_xscale = 1;
			swordShot.image_yscale = 1;
			swordShot.effectType = Effect.Flare;
			angleBk += (360/circleAmount);
		}
	}
}
#endregion
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
		
		with (obj_enemyProjectile)
		{
			if (sprite_index == spr_gooGround)
			{
				image_xscale += 0.15;
				image_yscale += 0.15;
			}
		}
	}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
	{
		if (spawnThingOnce == true)
		{
			spawnThingOnce = false;
			var gooGround = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-135,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = 90;
			//Visual
			gooGround.image_alpha = 0.75;
			gooGround.image_blend = global.orange;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 2;
			gooGround.image_yscale = 2;
			gooGround.destroy = false;
			gooGround.effectType = Effect.NoEffect;
		}
		if (spawnThingOnce == false)
		{
			with (obj_enemyProjectile)
			{
				if (sprite_index == gooSprite)
				{
					image_xscale = clamp(image_xscale+0.75,0,2);
					image_yscale = image_xscale;
				}
			}
		}
	}
}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 5;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
		infernalBall.effectType = Effect.Spark;
		if (phase == 2 || phase == 3)
		{
			var infernalBall = instance_create_depth(global.arenaMiddleX-175,global.arenaMiddleY,depth+1,obj_enemyProjectile);
			//Main
			infernalBall.direction = point_direction(global.arenaMiddleX-175,global.arenaMiddleY,obj_allPlayer.x,obj_allPlayer.y);
			infernalBall.speed = 5;
			infernalBall.image_angle = infernalBall.direction+90;
			//Visual
			infernalBall.image_alpha = 0.85;
			infernalBall.image_blend = c_yellow;
			infernalBall.sprite_index = spr_fireBall;
			infernalBall.image_xscale = 3;
			infernalBall.image_yscale = 3;
			infernalBall.effectType = Effect.Spark;
		}
		if (phase == 3)
		{
			var infernalBall = instance_create_depth(global.arenaMiddleX+175,global.arenaMiddleY,depth+1,obj_enemyProjectile);
			//Main
			infernalBall.direction = point_direction(global.arenaMiddleX+175,global.arenaMiddleY,obj_allPlayer.x,obj_allPlayer.y);
			infernalBall.speed = 5;
			infernalBall.image_angle = infernalBall.direction+90;
			//Visual
			infernalBall.image_alpha = 0.85;
			infernalBall.image_blend = c_yellow;
			infernalBall.sprite_index = spr_fireBall;
			infernalBall.image_xscale = 3;
			infernalBall.image_yscale = 3;
			infernalBall.effectType = Effect.Spark;
		}
	}
}
#endregion
#region ConeAttack
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		
		var coneWide = 120;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 18;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 1.15;
			fireBolt.image_yscale = 1.15;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
		
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{	
		var coneWide = 180;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 36;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 3;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = 1;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
}
#endregion
#region ChaseAttack
if (attack == Atks.ChaseAttack)
{
	
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		drawArea = false;
		var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
		//Visual
		beam.image_alpha = 0.85;
		beam.image_blend = global.orange;
		beam.sprite_index = spr_beam;
		beam.image_xscale = 0.25;
		beam.image_yscale = 20;
		beam.maxSize = 2;
		if (gameMaster.chosenBoss == Boss.ArenaKing){beam.maxSize = 2.5; beam.image_blend = global.goldColor;}
		beam.minSize = 0.25;
		beam.stickOn = true;
		beam.range = 2.5*30;
		beam.effectType = Effect.NoEffect;
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			var beam = instance_create_depth(kingCloneX,kingCloneY,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = point_direction(kingCloneX,kingCloneY,obj_allPlayer.x,obj_allPlayer.y)-90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = global.goldColor;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.25;
			beam.image_yscale = 20;
			beam.maxSize = 2;
			if (gameMaster.chosenBoss == Boss.ArenaKing){beam.maxSize = 2.5;}
			beam.minSize = 0.25;
			beam.stickOn = false;
			beam.range = 2.5*30;
			beam.effectType = Effect.NoEffect;
		}
	}
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		drawArea = false;
		var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
		//Visual
		beam.image_alpha = 0.85;
		beam.image_blend = global.orange;
		beam.sprite_index = spr_beam;
		beam.image_xscale = 0.25;
		beam.image_yscale = 20;
		beam.maxSize = 2.5;
		beam.minSize = 0.25;
		beam.stickOn = true;
		beam.range = 2*30;
		beam.effectType = Effect.NoEffect;
		
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		var whichWay = choose(0,1);
		if (whichWay == 0)
		{
			var angle = 0;
			var amount = 4;
			repeat(amount)
			{
				var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
				//Main
				beam.image_angle = angle;
				//Visual
				beam.image_alpha = 0.85;
				beam.image_blend = global.orange;
				beam.sprite_index = spr_beam;
				beam.image_xscale = 0.25;
				beam.image_yscale = 20;
				beam.maxSize = 1.5;
				beam.minSize = 0.25;
				beam.stickOn = true;
				beam.beamChase = true;
				beam.turningSpeed = 45;
				beam.destroy = true;
				beam.range = (2)*30; 
				beam.effectType = Effect.NoEffect;
				angle += 360/amount;
			}
		}
		if (whichWay == 1)
		{
			var angle = 0;
			var amount = 4;
			repeat(amount)
			{
				var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
				//Main
				beam.image_angle = angle;
				//Visual
				beam.image_alpha = 0.85;
				beam.image_blend = global.orange;
				beam.sprite_index = spr_beam;
				beam.image_xscale = 0.25;
				beam.image_yscale = 20;
				beam.maxSize = 1.5;
				beam.minSize = 0.25;
				beam.stickOn = true;
				beam.beamChase = true;
				beam.turningSpeed = -45;
				beam.destroy = true;
				beam.range = (2)*30; 
				beam.effectType = Effect.NoEffect;
				angle += 360/amount;
			}
		}
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		rapidFireStacks += 7;
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		rapidFireStacks += 5;
	}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
	{
		rapidFireStacks += 8;
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
		var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
		if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
		if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 1.5;
		gooGround.image_yscale = 1.5;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
	}
}
#endregion
#region ZoneAttack
if (attack == Atks.ZoneAttack)
{
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		drawArea = false;		
		xBeamSpawn = global.arenaMiddleX-200;
		activateAlarm5 = true;
		beamsToSpawn = 13;
	}
	
}
#endregion
#region TauntAttack
if (attack == Atks.TauntAttack)
{
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = knightWitchGooSize;
		gooGround.image_yscale = knightWitchGooSize;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
}
#endregion
#region Heal Attack
if (attack == Atks.HealAttack)
{
	
}
#endregion
#endregion
#region Tier4
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		obj_bossMeleeWeapon.state = MeleeWeaponStates.SpinOnce;
		obj_bossMeleeWeapon.spinTimes = phase + 1;
	}
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
	{
		drawArea = false;
		var beamCircleAngle = 0;
		var circleBeams = 12;
		repeat(circleBeams)
		{
			var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = beamCircleAngle+90;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = c_fuchsia;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.2;
			beam.image_yscale = 20;
			beam.maxSize = 2;
			beam.minSize = 0.2;
			beam.stickOn = true;
			beam.range = 1*30;
			beam.effectType = Effect.NoEffect;
			beamCircleAngle += 360/circleBeams;
		}
	}
}
#endregion
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		var gooGround = instance_create_depth(obj_indicator.x,obj_indicator.y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_teal;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 2.5;
		gooGround.image_yscale = 2.5;
		gooGround.destroy = true;
		gooGround.effectType = Effect.NoEffect;
		with (gooGround)
		{
			var nearestIndicator = instance_nearest(x,y,obj_indicator);
			instance_destroy(nearestIndicator);
		}
	}
}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 5;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.8;
		infernalBall.image_blend = c_gray;
		infernalBall.sprite_index = spr_graveScythe_projectile;
		infernalBall.image_xscale = 1;
		infernalBall.image_yscale = 1;
		infernalBall.effectType = Effect.NoEffect;
	}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		var infernalBall = instance_create_depth(obj_allPlayer.x,obj_allPlayer.y-200,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(obj_allPlayer.x,obj_allPlayer.y-200,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 8;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.8;
		infernalBall.image_blend = c_red;
		infernalBall.sprite_index = spr_bloodKlott;
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
		infernalBall.effectType = Effect.Flare;
	}
}
#endregion
#region ConeAttack
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{	
		var coneWide = 220;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 22;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 3;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_graveScythe_projectile;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 0.55;
			fireBolt.image_yscale = 0.55;
			fireBolt.effectType = Effect.NoEffect;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{	
		var coneWide = 45;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 20;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_bloodKlott;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = 1;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
	{	
		var coneWide = 180;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 18;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 3;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = c_aqua;
			fireBolt.image_xscale = 1.5;
			fireBolt.image_yscale = 1.5;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
}
#endregion
#region ChaseAttack
if (attack == Atks.ChaseAttack)
{
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 2;
		infernalBall.image_angle = 0;
		//Visual
		infernalBall.image_alpha = 0.5;
		infernalBall.image_blend = c_white;
		infernalBall.sprite_index = spr_statueOfChase;
		infernalBall.image_xscale = 1;
		infernalBall.image_yscale = 1;
		infernalBall.effectType = Effect.NoEffect;
		infernalBall.chase = true;
		infernalBall.range = (10)*30;
	}
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
	{
		var angle = 0;
		var amount = 4;
		repeat(amount)
		{
			var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			beam.image_angle = angle;
			//Visual
			beam.image_alpha = 0.85;
			beam.image_blend = global.orange;
			beam.sprite_index = spr_beam;
			beam.image_xscale = 0.25;
			beam.image_yscale = 20;
			beam.maxSize = 1.5;
			beam.minSize = 0.25;
			beam.stickOn = true;
			beam.beamChase = true;
			beam.turningSpeed = 45;
			beam.destroy = true;
			beam.range = (4)*30; 
			beam.effectType = Effect.NoEffect;
			angle += 360/amount;
		}
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.Gravekeeper)
	{
		rapidFireStacks += 8;
	}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		rapidFireStacks += 5;
	}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		rapidFireStacks += 8;
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			rapidFireStacks -= 2;
		}
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
	{
		alpha = normalAlpha;
		chooseAnAttack = true;
	}
}
#endregion
#region ZoneAttack
if (attack == Atks.ZoneAttack)
{
	
}
#endregion
#region TauntAttack
if (attack == Atks.TauntAttack)
{
	
}
#endregion
#region Heal Attack
if (attack == Atks.HealAttack)
{
	
}
#endregion
#endregion
#region Tier5
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 24;
		repeat(circleAmount)
		{
			var bloodKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			bloodKlot.direction = angleBk;
			bloodKlot.speed = 5;
			bloodKlot.image_angle = bloodKlot.direction;
			//Visual
			bloodKlot.image_alpha = 0.85;
			bloodKlot.sprite_index = spr_bloodKlott;
			bloodKlot.image_blend = c_maroon;
			bloodKlot.image_xscale = 1;
			bloodKlot.image_yscale = 1;
			bloodKlot.effectType = Effect.Smoke;
			angleBk += (360/circleAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{
		var angleBk = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		var circleAmount = 16;
		repeat(circleAmount)
		{
			var bloodKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			bloodKlot.direction = angleBk;
			bloodKlot.speed = 5;
			bloodKlot.image_angle = bloodKlot.direction;
			//Visual
			bloodKlot.image_alpha = 0.55;
			bloodKlot.sprite_index = spr_bloodKlott;
			bloodKlot.image_blend = c_green;
			bloodKlot.image_xscale = 1.75;
			bloodKlot.image_yscale = 1.75;
			bloodKlot.effectType = Effect.Smoke;
			angleBk += (360/circleAmount);
		}
	}
}
#endregion
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{
		with (obj_enemyProjectile)
		{
			if (sprite_index == gooSprite)
			{
				image_xscale = clamp(image_xscale*1.1,0,4);
				image_yscale = image_xscale;
			}
		}
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		gooGround.speed = 0;
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_green;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 3.2;
		gooGround.image_yscale = 3.2;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{
	#region Demon Queens Head
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		//up
		var infernalBall = instance_create_depth(global.player.x,global.player.y-150,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = 270;
		infernalBall.speed = 7.5;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = c_red;
		infernalBall.sprite_index = spr_bloodKlott;
		infernalBall.image_xscale = 2;
		infernalBall.image_yscale = 2;
		infernalBall.effectType = Effect.Flare;
		//down
		var infernalBall2 = instance_create_depth(global.player.x,global.player.y+150,depth+1,obj_enemyProjectile);
		//Main
		infernalBall2.direction = 90;
		infernalBall2.speed = 7.5;
		infernalBall2.image_angle = infernalBall2.direction+90;
		//Visual
		infernalBall2.image_alpha = 0.85;
		infernalBall2.image_blend = c_red;
		infernalBall2.sprite_index = spr_bloodKlott;
		infernalBall2.image_xscale = 2;
		infernalBall2.image_yscale = 2;
		infernalBall2.effectType = Effect.Flare;	
		//left
		var infernalBall3 = instance_create_depth(global.player.x-150,global.player.y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall3.direction = 0;
		infernalBall3.speed = 7.5;
		infernalBall3.image_angle = infernalBall3.direction+90;
		//Visual
		infernalBall3.image_alpha = 0.85;
		infernalBall3.image_blend = c_red;
		infernalBall3.sprite_index = spr_bloodKlott;
		infernalBall3.image_xscale = 2;
		infernalBall3.image_yscale = 2;
		infernalBall3.effectType = Effect.Flare;	
		//right
		var infernalBall4 = instance_create_depth(global.player.x+150,global.player.y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall4.direction = 180;
		infernalBall4.speed = 7.5;
		infernalBall4.image_angle = infernalBall4.direction+90;
		//Visual
		infernalBall4.image_alpha = 0.85;
		infernalBall4.image_blend = c_red;
		infernalBall4.sprite_index = spr_bloodKlott;
		infernalBall4.image_xscale = 2;
		infernalBall4.image_yscale = 2;
		infernalBall4.effectType = Effect.Flare;	
	}
	#endregion
	#region Death King
	if (gameMaster.chosenBoss == Boss.DeathKing )
	{
		var bat = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		bat.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		bat.speed = 7;
		//Visual
		bat.image_alpha = 0.8;
		bat.image_blend = c_red;
		bat.sprite_index = spr_bat;
		bat.image_xscale = 1.5;
		bat.image_yscale = 1.5;
		bat.range = 4*10;
		bat.boomerang = true;
		bat.effectType = Effect.NoEffect;
	}
	#endregion
	#region Slime Queen
	if (gameMaster.chosenBoss == Boss.SlimeQueen || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		var slime = instance_create_depth(global.player.x+100,global.player.y+100,depth+1,obj_enemyProjectile);
		//Main
		slime.direction = 135;
		slime.speed = 6.5;
		//Visual
		slime.image_alpha = 1;
		slime.image_blend = c_lime;
		slime.sprite_index = spr_slime;
		slime.image_xscale = 1;
		slime.image_yscale = 1;
		slime.range = 10*10;
		slime.effectType = Effect.NoEffect;
		
		var slime2 = instance_create_depth(global.player.x-100,global.player.y+100,depth+1,obj_enemyProjectile);
		//Main
		slime2.direction = 45;
		slime2.speed = 6.5;
		//Visual
		slime2.image_alpha = 1;
		slime2.image_blend = c_lime;
		slime2.sprite_index = spr_slime;
		slime2.image_xscale = 1;
		slime2.image_yscale = 1;
		slime2.range = 10*10;
		slime2.effectType = Effect.NoEffect;
		
		var slime3 = instance_create_depth(global.player.x+100,global.player.y-100,depth+1,obj_enemyProjectile);
		//Main
		slime3.direction = 225;
		slime3.speed = 6.5;
		//Visual
		slime3.image_alpha = 1;
		slime3.image_blend = c_lime;
		slime3.sprite_index = spr_slime;
		slime3.image_xscale = 1;
		slime3.image_yscale = 1;
		slime3.range = 10*10;
		slime3.effectType = Effect.NoEffect;
		
		var slime4 = instance_create_depth(global.player.x-100,global.player.y-100,depth+1,obj_enemyProjectile);
		//Main
		slime4.direction = 315;
		slime4.speed = 6.5;
		//Visual
		slime4.image_alpha = 1;
		slime4.image_blend = c_lime;
		slime4.sprite_index = spr_slime;
		slime4.image_xscale = 1;
		slime4.image_yscale = 1;
		slime4.range = 10*10;
		slime4.effectType = Effect.NoEffect;
		
		if (gameMaster.chosenBoss == Boss.ArenaKing)
		{
			slime.image_blend = global.goldColor;
			slime2.image_blend = global.goldColor;
			slime3.image_blend = global.goldColor;
			slime4.image_blend = global.goldColor;
		}
	}
	#endregion
}
#endregion
#region ConeAttack
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{	
		var coneWide = 180;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 56;
		repeat(coneAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = coneAtkFW;
			fireBolt.speed = 3;
			fireBolt.image_angle = fireBolt.direction+90;
			//Visual
			fireBolt.image_alpha = 0.85;
			fireBolt.sprite_index = spr_fireBall;
			fireBolt.image_blend = c_dkgray;
			fireBolt.image_xscale = 0.8;
			fireBolt.image_yscale = 0.8;
			fireBolt.effectType = Effect.Flare;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{	
		var coneWide = 90;
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-coneWide*0.5;
		var coneAmount = 10;
		repeat(coneAmount)
		{
			var slime = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			slime.direction = coneAtkFW;
			slime.speed = 4;
			//Visual
			slime.image_alpha = 1;
			slime.sprite_index = spr_slime;
			slime.image_blend = c_lime;
			slime.image_xscale = 0.65;
			slime.image_yscale = 0.65;
			slime.effectType = Effect.NoEffect;
			coneAtkFW += (coneWide/coneAmount);
		}
	}
}
#endregion
#region ChaseAttack
if (attack == Atks.ChaseAttack)
{
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		with (obj_indicator){followPlayer = false;}
		
		targetX = global.player.x;
		targetY = global.player.y;
		
		x = targetX;
		y = global.player.y-400;
		
		fall = true;
		jump = false;
	}
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 2.5;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = c_yellow;
		infernalBall.sprite_index = spr_bat;
		infernalBall.image_xscale = 2;
		infernalBall.image_yscale = 2;
		infernalBall.effectType = Effect.NoEffect;
		infernalBall.chase = true;
		infernalBall.range = (3)*30;
	}
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{
		var bigSlime = instance_create_depth(obj_allPlayer.x,obj_allPlayer.y-200,depth+1,obj_enemyProjectile);
		//Main
		bigSlime.direction = 270;
		bigSlime.speed = 10.5;
		//Visual
		bigSlime.image_alpha = 1;
		bigSlime.image_blend = c_lime;
		bigSlime.sprite_index = spr_slime;
		bigSlime.image_xscale = 1.5;
		bigSlime.image_yscale = 1.5;
		bigSlime.range = (0.80)*30;
		bigSlime.effectType = Effect.NoEffect;
		
		hp -= 45;
	}
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		var beam = instance_create_depth(x-20,y-29,depth+1,obj_enemyProjectile);
		//Main
		beam.image_angle = -90;
		//Visual
		beam.image_alpha = 0.85;
		beam.image_blend = c_red;
		beam.sprite_index = spr_beam;
		beam.image_xscale = 0.5;
		beam.image_yscale = 20;
		beam.maxSize = 2;
		beam.minSize = 0.25;
		beam.stickOn = true;
		beam.beamChase = true;
		beam.turningSpeed = 40;
		beam.destroy = true;
		beam.effectType = Effect.NoEffect;
			
		var beam2 = instance_create_depth(x+20,y-29,depth+1,obj_enemyProjectile);
		//Main
		beam2.image_angle = 90;
		//Visual
		beam2.image_alpha = 0.85;
		beam2.image_blend = c_red;
		beam2.sprite_index = spr_beam;
		beam2.image_xscale = 0.5;
		beam2.image_yscale = 20;
		beam2.maxSize = 2;
		beam2.minSize = 0.25;
		beam2.stickOn = true;
		beam2.beamChase = true;
		beam2.turningSpeed = -40;
		beam2.destroy = true;
		beam2.effectType = Effect.NoEffect;
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		rapidFireStacks += 6;
	}
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{
		rapidFireStacks += 8;
	}
	if (gameMaster.chosenBoss == Boss.SlimeQueen)
	{
		rapidFireStacks += 12;
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		var playerX = global.player.x;
		var playerY = global.player.y;
	
		global.player.x = x;
		global.player.y = y;
	
		x = playerX;
		y = playerY;
	
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = irandom_range(0,360);
			//Visual
			gooGround.image_alpha = 1;
			gooGround.image_blend = c_maroon;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 2.5;
			gooGround.image_yscale = 2.5;
			gooGround.destroy = false;
			gooGround.effectType = Effect.NoEffect;
	}
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{
		if (place_free(x+teleportX,y)){x = x + teleportX;}
		if (place_free(x,y+teleportY)){y = y + teleportY;}
		
		teleportX = choose(-75,75);
		teleportY = choose(-75,75);
		
		alpha = normalAlpha;
		chooseAnAttack = true;
	}
}
#endregion
#region ZoneAttack
if (attack == Atks.ZoneAttack)
{
	
}
#endregion
#region TauntAttack
if (attack == Atks.TauntAttack)
{
	
}
#endregion
#region Heal Attack
if (attack == Atks.HealAttack)
{
	
}
#endregion
#endregion
#region Tier 6 The Arena King
#region GooSpawn
if (attack == Atks.GooSpawn)
{
	if (gameMaster.chosenBoss == Boss.ArenaKing)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.speed = 0;
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = global.goldColor;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 2.2;
		gooGround.image_yscale = 2.2;
		gooGround.destroy = false;
		gooGround.effectType = Effect.NoEffect;
		
		var gooGroundClone = instance_create_depth(kingCloneX,kingCloneY,-5,obj_enemyProjectile);
		//Main
		gooGroundClone.speed = 0;
		//Visual
		gooGroundClone.image_alpha = 1;
		gooGroundClone.image_blend = global.goldColor;
		gooGroundClone.sprite_index = spr_gooGround;
		gooGroundClone.image_xscale = 2.2;
		gooGroundClone.image_yscale = 2.2;
		gooGroundClone.destroy = false;
		gooGroundClone.effectType = Effect.NoEffect;
		
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.ArenaKing)
	{
		alpha = 1;
		var cloneX = kingCloneX;
		var cloneY = kingCloneY;
	
		kingCloneX = x;
		kingCloneY = y;
	
		x = cloneX;
		y = cloneY;
	
		chooseAnAttack = true;
	}
}
#endregion
#endregion