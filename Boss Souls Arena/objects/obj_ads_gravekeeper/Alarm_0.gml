if (chooseAttack4 == Attacks.CirkleScythe)
{
	var angle = 0;
	repeat(10)
	{
		var scythe1 = instance_create_depth(x,y,1,obj_scythe_projectile);
		scythe1.direction = angle;
		scythe1.speed = 4;
		angle += 360/10;
	}

}
