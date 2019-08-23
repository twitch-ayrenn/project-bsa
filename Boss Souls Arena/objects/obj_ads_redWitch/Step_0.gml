/// @description Insert description here
////code
damage = (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/50));
//regen
regenStacks++;
if (regenStacks >= (30))
{
	hp += 1;
	var healBossAmount = 1;
	var healBoss = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;	
	regenStacks = 0;
}
if (hp > maxHp){hp = maxHp;}
//movement
if (witchPostion == 1)
{
	if (distance_to_point(obj_player.x,obj_player.y-70) > 6)
	{
		move_towards_point(obj_player.x,obj_player.y-70,3);		
	}
}
if (witchPostion == 2)
{
	if (distance_to_point(obj_player.x-50,obj_player.y+50) > 6)
	{
		move_towards_point(obj_player.x-50,obj_player.y+50,3);
	}
}
if (witchPostion == 3)
{
	if (distance_to_point(obj_player.x+50,obj_player.y+50) > 6)
	{
		move_towards_point(obj_player.x+50,obj_player.y+50,3);
	}
}
//shootings
if (shoot == true)
{

	shoot = false;
	var shot = instance_create_depth(x,y,depth-1,obj_witchshot_red);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y);
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270;
	shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.damage = damage;
	shot.speed = 4;
	
	var shot = instance_create_depth(x,y,depth-1,obj_witchshot_red);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)+20;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270+20;
	shot.damage = damage;
	shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.speed = 4;
	
	var shot = instance_create_depth(x,y,depth-1,obj_witchshot_red);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)-20;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270-20;
	shot.damage = damage;
		shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.speed = 4;
	
	alarm[0] = firerate;
}
if (hp < 0)
{
	repeat(5*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
	var pendantAngle = 0;
	if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
	{
		repeat(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
		{
			var scarletShot = instance_create_depth(x,y,depth+1,obj_item_scarletShot);
			scarletShot.direction = pendantAngle;
			scarletShot.speed = global.scarletShotSpeed;
			scarletShot.image_angle = pendantAngle+90;
			pendantAngle += 360/(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost));
		}
	}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.02;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 3;
		}
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	instance_destroy();
}