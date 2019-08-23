/// @description here are the attack executes
if (global.soundOn == true)
{
	audio_play_sound(snd_theGraveKeeper_attack,Prioity.Normal,false);
}
with (obj_camera){shake_remain += 2;}
if (chooseAttack == Attacks.ScytheChase)
{
	with (obj_scythe)
	{
		state = ScytheState.Chasing;
	}
}
if (chooseAttack == Attacks.ScytheSpinTp)
{
	x = obj_player.x - 20;
	y = obj_player.y;
	with (obj_scythe)
	{
		state = ScytheState.Spin;
	}
}
if (chooseAttack == Attacks.ScytheCombo)
{
	var scythe1 = instance_create_depth(x,y,1,obj_scythe_projectile);
	scythe1.direction = point_direction(x,y,obj_player.x,obj_player.y)+30;
	scythe1.speed = 5;
	
	var scythe2 = instance_create_depth(x,y,1,obj_scythe_projectile);
	scythe2.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
	scythe2.speed = 5;
	
	var scythe3 = instance_create_depth(x,y,1,obj_scythe_projectile);
	scythe3.direction = point_direction(x,y,obj_player.x,obj_player.y);
	scythe3.speed = 5;
	
	var scythe4 = instance_create_depth(x,y,1,obj_scythe_projectile);
	scythe4.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
	scythe4.speed = 5;
	
	var scythe5 = instance_create_depth(x,y,1,obj_scythe_projectile);
	scythe5.direction = point_direction(x,y,obj_player.x,obj_player.y)-30;
	scythe5.speed = 5;
}
if (chooseAttack == Attacks.PlusScythe)
{
	var scythe1 = instance_create_depth(obj_player.x+75,obj_player.y,1,obj_scythe_projectile);
	scythe1.direction = 180;
	scythe1.speed = 5;
	scythe1.time = 1;
	
	var scythe2 = instance_create_depth(obj_player.x-75,obj_player.y,1,obj_scythe_projectile);
	scythe2.direction = 0;
	scythe2.speed = 5;
	scythe2.time = 1;
	
	var scythe3 = instance_create_depth(obj_player.x,obj_player.y+75,1,obj_scythe_projectile);
	scythe3.direction = 90;
	scythe3.speed = 5;
	scythe3.time = 1;
	
	var scythe4 = instance_create_depth(obj_player.x,obj_player.y-75,1,obj_scythe_projectile);
	scythe4.direction = 270;
	scythe4.speed = 5;
	scythe4.time = 1;
}
if (chooseAttack == Attacks.CrossScythe)
{
	var scythe1 = instance_create_depth(obj_player.x+64,obj_player.y+64,1,obj_scythe_projectile);
	scythe1.direction = 90+45;
	scythe1.speed = 5;
	scythe1.time = 2;
	
	var scythe2 = instance_create_depth(obj_player.x-64,obj_player.y-64,1,obj_scythe_projectile);
	scythe2.direction = 360-45;
	scythe2.speed = 5;
	scythe2.time = 2;
	
	var scythe3 = instance_create_depth(obj_player.x+64,obj_player.y-64,1,obj_scythe_projectile);
	scythe3.direction = 180+45;
	scythe3.speed = 5;
	scythe3.time = 2;
	
	var scythe4 = instance_create_depth(obj_player.x-64,obj_player.y+64,1,obj_scythe_projectile);
	scythe4.direction = 45;
	scythe4.speed = 5;
	scythe4.time = 2;
}
if (chooseAttack == Attacks.CirkleScythe)
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
if (chooseAttack == Attacks.Shot10Scythes)
{
	
}