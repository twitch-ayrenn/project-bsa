/// @description here are the attack executes
if (global.soundOn == true)
{
	//audio_play_sound(snd_theGraveKeeper_attack,Prioity.Normal,false);
}
if (chooseAttack2 == GeneralAttacks.ScytheAttacks)
{
	with (obj_deathKnightScythe_2)
	{
		state = DeathScytheState.Attack;
		
	}
}
if (chooseAttack2 == GeneralAttacks.Cone_Attack)
{
	var scythe1 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe1.direction = point_direction(x,y,obj_player.x,obj_player.y)+24;
	scythe1.speed = 5;
	
	var scythe2 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe2.direction = point_direction(x,y,obj_player.x,obj_player.y)+16;
	scythe2.speed = 5;
	
	var scythe3 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe3.direction = point_direction(x,y,obj_player.x,obj_player.y)+8;
	scythe3.speed = 5;
	
	var scythe4 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe4.direction = point_direction(x,y,obj_player.x,obj_player.y)-8;
	scythe4.speed = 5;
	
	var scythe5 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe5.direction = point_direction(x,y,obj_player.x,obj_player.y)-16;
	scythe5.speed = 5;
	
	var scythe6 = instance_create_depth(x,y,1,obj_deathKnightSword);
	scythe6.direction = point_direction(x,y,obj_player.x,obj_player.y)-24;
	scythe6.speed = 5;
}
if (chooseAttack2 == GeneralAttacks.Cirkle_Attack)
{
	var angle = 0;
	repeat(18)
	{
		var scythe1 = instance_create_depth(x,y,1,obj_deathKnightSword);
		scythe1.direction = angle;
		scythe1.speed = 5;
		angle += 360/18;
	}

}
if (chooseAttack2 == GeneralAttacks.TpAttack)
{
	x = obj_player.x + irandom_range(-100,100);
	y = obj_player.y + irandom_range(-100,100);
	chooseAnAttack = true;
}