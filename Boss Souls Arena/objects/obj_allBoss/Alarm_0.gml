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
		bloodKlot.image_xscale = 0.75;
		bloodKlot.image_yscale = 0.75;
	}
}
#endregion
#region CircleAttacks
if (attack == Atks.CircleAttack)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var angleBk = 0;
		var circleAmount = 8;
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
			bloodKlot.image_xscale = 0.75;
			bloodKlot.image_yscale = 0.75;
			angleBk += (360/circleAmount);
		}
	}
}
#endregion