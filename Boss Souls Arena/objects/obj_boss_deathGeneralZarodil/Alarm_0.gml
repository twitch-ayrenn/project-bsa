/// @description here are the attack executes
if (global.soundOn == true)
{
	audio_play_sound(snd_theGraveKeeper_attack,Prioity.Normal,false);
}
if (chooseAttack == GeneralAttacks.ScytheAttacks)
{
	with (obj_deathScythe)
	{
		state = DeathScytheState.Attack;
		
	}
}
if (chooseAttack == GeneralAttacks.Cone_Attack)
{
	var scythe1 = instance_create_depth(x,y,1,obj_deathSword);
	scythe1.direction = point_direction(x,y,obj_player.x,obj_player.y)+40;
	scythe1.speed = 5;
	
	var scythe2 = instance_create_depth(x,y,1,obj_deathSword);
	scythe2.direction = point_direction(x,y,obj_player.x,obj_player.y)+30;
	scythe2.speed = 6;
	
	var scythe3 = instance_create_depth(x,y,1,obj_deathSword);
	scythe3.direction = point_direction(x,y,obj_player.x,obj_player.y)+20;
	scythe3.speed = 6.5;
	
	var scythe4 = instance_create_depth(x,y,1,obj_deathSword);
	scythe4.direction = point_direction(x,y,obj_player.x,obj_player.y)+12.5;
	scythe4.speed = 7;
	
	var scythe5 = instance_create_depth(x,y,1,obj_deathSword);
	scythe5.direction = point_direction(x,y,obj_player.x,obj_player.y)-12.5;
	scythe5.speed = 7;
	
	var scythe6 = instance_create_depth(x,y,1,obj_deathSword);
	scythe6.direction = point_direction(x,y,obj_player.x,obj_player.y)-20;
	scythe6.speed = 6.5;
	
	var scythe7 = instance_create_depth(x,y,1,obj_deathSword);
	scythe7.direction = point_direction(x,y,obj_player.x,obj_player.y)-30;
	scythe7.speed = 6;
	
	var scythe8 = instance_create_depth(x,y,1,obj_deathSword);
	scythe8.direction = point_direction(x,y,obj_player.x,obj_player.y)-40;
	scythe8.speed = 5;
}
if (chooseAttack == GeneralAttacks.Cross_Attack)
{
	var scythe1 = instance_create_depth(obj_player.x+75,obj_player.y,1,obj_deathSword);
	scythe1.direction = 180;
	scythe1.speed = 5;
	scythe1.time = 3;
	
	var scythe2 = instance_create_depth(obj_player.x-75,obj_player.y,1,obj_deathSword);
	scythe2.direction = 0;
	scythe2.speed = 5;
	scythe2.time = 3;
	
	var scythe3 = instance_create_depth(obj_player.x,obj_player.y+75,1,obj_deathSword);
	scythe3.direction = 90;
	scythe3.speed = 5;
	scythe3.time = 3;
	
	var scythe4 = instance_create_depth(obj_player.x,obj_player.y-75,1,obj_deathSword);
	scythe4.direction = 270;
	scythe4.speed = 5;
	scythe4.time = 3;
	
	var scythe5 = instance_create_depth(obj_player.x+64,obj_player.y+64,1,obj_deathSword);
	scythe5.direction = 90+45;
	scythe5.speed = 5;
	scythe5.time = 3;
	
	var scythe6 = instance_create_depth(obj_player.x-64,obj_player.y-64,1,obj_deathSword);
	scythe6.direction = 360-45;
	scythe6.speed = 5;
	scythe6.time = 3;
}
if (chooseAttack == GeneralAttacks.Cirkle_Attack)
{
	var angle = 0;
	repeat(18)
	{
		var scythe1 = instance_create_depth(x,y,1,obj_deathSword);
		scythe1.direction = angle;
		scythe1.speed = 5;
		angle += 360/18;
	}

}
if (chooseAttack == GeneralAttacks.TpAttack)
{
	x = obj_player.x + irandom_range(-100,100);
	y = obj_player.y + irandom_range(-100,100);
	chooseAnAttack = true;
}
if (chooseAttack == GeneralAttacks.Shoot_Attack)
{
	minigunBullets += 40;
}
if (chooseAttack == GeneralAttacks.Taunt)
{
	global.damage = global.damage*0.9;
	with (obj_player){maxHp = maxHp*0.9;hp = hp*0.9;}
}