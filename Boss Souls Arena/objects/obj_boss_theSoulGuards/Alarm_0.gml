/// @description here are the attack executes
if (global.soundOn == true)
{
	//audio_play_sound(snd_theGraveKeeper_attack,Prioity.Normal,false);
}
with (obj_camera){shake_remain += 2;}
if (chooseSoulAttack == SoulAttacks.Sword_Spin)
{
	with (obj_soulGuardSword_right)
	{
		state = SwordStates.ChaseSpin;
	}
	with (obj_soulGuardSword_left)
	{
		state = SwordStates.ChaseSpin;
	}
}
if (chooseSoulAttack == SoulAttacks.TelePort)
{
	x = obj_player.x + irandom_range(-200,200);
	y = obj_player.y + irandom_range(-150,150);
	chooseAnAttack = true;
}
if (chooseSoulAttack == SoulAttacks.Cone_Attack)
{
	var scythe1 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe1.direction = point_direction(x,y,obj_player.x,obj_player.y)+30;
	scythe1.speed = 6;
	
	var scythe2 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe2.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
	scythe2.speed = 6;
	
	var scythe3 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe3.direction = point_direction(x,y,obj_player.x,obj_player.y);
	scythe3.speed = 6;
	
	var scythe4 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe4.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
	scythe4.speed = 6;
	
	var scythe5 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe5.direction = point_direction(x,y,obj_player.x,obj_player.y)-30;
	scythe5.speed = 6;
	
	var scythe6 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe6.direction = point_direction(x,y,obj_player.x,obj_player.y)-45;
	scythe6.speed = 6;
	
	var scythe7 = instance_create_depth(x,y,1,obj_sword_projectile);
	scythe7.direction = point_direction(x,y,obj_player.x,obj_player.y)-45;
	scythe7.speed = 6;
}
if (chooseSoulAttack == SoulAttacks.Mini_Gun)
{
	minigunBullets += damage/3;
}
if (chooseSoulAttack == SoulAttacks.Gain_Strength)
{
	hp += maxHp*0.10;
	damage += 10;
}
if (chooseSoulAttack == SoulAttacks.Cirkle_Attack)
{
	var angle = 0;
	repeat(12)
	{
		var scythe1 = instance_create_depth(x,y,1,obj_sword_projectile);
		scythe1.direction = angle;
		scythe1.speed = 4.5;
		angle += 360/12;
	}

}