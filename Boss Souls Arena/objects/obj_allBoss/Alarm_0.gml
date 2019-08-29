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
		var angleBk = 0;
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
		var angleFC = 0;
		var circleAmount = 14;
		repeat(circleAmount)
		{
			var fireBolt = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
			//Main
			fireBolt.direction = angleFC;
			fireBolt.speed = 5;
			fireBolt.image_angle = fireBolt.direction;
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
		infernalBall.speed = 3.5;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
	}
}
#endregion
#region Chase

#endregion

