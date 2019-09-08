/// @description Attacks
#region NormalAttacks
if (attack == Atks.NormalShot)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var bloodKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		bloodKlot.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		bloodKlot.speed = 6;
		bloodKlot.image_angle = bloodKlot.direction;
		//Visual
		bloodKlot.image_alpha = 0.85;
		bloodKlot.image_blend = c_maroon;
		bloodKlot.sprite_index = spr_bloodKlott;
		bloodKlot.image_xscale = 1.5;
		bloodKlot.image_yscale = 1.5;
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
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
	{
		var middleGooSpawn = instance_nearest(645,590,obj_enemyProjectile);
		if (spawnThingOnce == true)
		{
			spawnThingOnce = false;
			var gooGround = instance_create_depth(645,590,-5,obj_enemyProjectile);
			//Main
			gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
			gooGround.speed = 0;
			gooGround.image_angle = 0;
			//Visual
			gooGround.image_alpha = 0.75;
			gooGround.image_blend = c_purple;
			gooGround.sprite_index = spr_gooGround;
			gooGround.image_xscale = 1.5;
			gooGround.image_yscale = 1.5;
			gooGround.destroy = false;
		}
		if (spawnThingOnce == false)
		{
			with (middleGooSpawn)
			{
				image_xscale *= clamp(1.25,0,3);
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
	}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus)
	{
		var bigBat = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		bigBat.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		bigBat.speed = 4;
		bigBat.image_angle = 0;
		//Visual
		bigBat.image_alpha = 0.85;
		bigBat.image_blend = c_maroon;
		bigBat.sprite_index = spr_bat;
		bigBat.image_xscale = 1*(image_xscale);
		bigBat.image_yscale = bigBat.image_xscale;
	}
}
#endregion
#region Cone Attacks
if (attack == Atks.ConeAttack)
{
	if (gameMaster.chosenBoss == Boss.FlameWisp)
	{
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-45;
		var coneWide = 90;
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
			coneAtkFW += (coneWide/coneAmount);
		}
	}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus)
	{
		var coneAtkFW = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-45;
		var coneWide = 120;
		var coneAmount = 7;
		repeat(coneAmount)
		{
			var bats = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			bats.direction = coneAtkFW;
			bats.speed = 5;
			bats.image_angle = 0;
			//Visual
			bats.image_alpha = 0.9;
			bats.sprite_index = spr_bat;
			bats.image_blend = c_gray;
			bats.image_xscale = 0.5*(image_xscale);
			bats.image_yscale = bats.image_xscale;
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
		infernalBall.chase = true;
		infernalBall.range = (6.5)*30;
	}
}
#endregion
#region BeamAttack
if (attack == Atks.BeamAttack)
{
	drawArea = false;
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 1)
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
			beam.image_xscale = 1.25;
			beam.image_yscale = 20;
			beam.lockOn = id;
			beam.range = 2*30;
			angleBeamPlus += (360/beamCircleAmount)
		}
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 2)
	{
		drawArea = false;
		var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
		//Visual
		beam.image_alpha = 0.85;
		beam.image_blend = global.orange;
		beam.sprite_index = spr_beam;
		beam.image_xscale = 1.5;
		beam.image_yscale = 20;
		beam.lockOn = id;
		beam.range = 2*30;
	}
}
#endregion
#region RapidFire
if (attack == Atks.RapidFire)
{
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
	{
		rapidFireStacks += 5;
	}
}
#endregion
#region Teleport
if (attack == Atks.TeleportAttack)
{
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus)
	{
		alpha = normalAlpha;
		chooseAnAttack = true;
	}
}
#endregion
