/// @description Attacks
randomize();
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
	if (gameMaster.chosenBoss == Boss.FlameWisp)
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
		gooGround.image_xscale = 2;
		gooGround.image_yscale = 2;
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
	if (gameMaster.chosenBoss == Boss.FlameWisp)
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
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
		infernalBall.effectType = Effect.Spark;
	}
}
#endregion
#region Cone Attacks
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameWisp)
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
		infernalBall.effectType = Effect.Smoke;
		infernalBall.chase = true;
		infernalBall.range = (6.5)*30;
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
		beam.maxSize = 1.5;
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
#region Teleport
if (attack == Atks.TeleportAttack)
{
	
}
#endregion
#region On all attacks

#endregion
#endregion
#region Tier2
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	if (gameMaster.chosenBoss == Boss.DeathKnight)
	{
		obj_bossMeleeWeapon.state = MeleeWeaponStates.SpinOnce;
		obj_bossMeleeWeapon.spinTimes = phase;
	}
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
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
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
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
		if (instance_exists(obj_indicator)){instance_destroy(obj_indicator);}
	}
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		var bottomGooSpawn = instance_nearest(global.arenaMiddleX,global.arenaMiddleY+135,obj_enemyProjectile);
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
			with (bottomGooSpawn)
			{
				image_xscale += clamp(0.75,0,2.5);
				image_yscale = image_xscale;
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
		infernalBall.speed = 3.75;
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
	if (gameMaster.chosenBoss == Boss.FlameGate)
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
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
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
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
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
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
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

}
#endregion
#region OneShot
if (attack == Atks.OneShotAttack)
{

}
#endregion
#region ConeAttack
if (attack == Atks.ConeAttack)
{

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
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
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
		beam.range = 2.5*30;
		beam.effectType = Effect.NoEffect;
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{

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
		beamsToSpawn = 15;
	}

}
#endregion
#endregion