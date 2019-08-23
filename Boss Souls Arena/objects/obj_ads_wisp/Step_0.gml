/// @description Insert description here
//run once
image_alpha = 0.75;
damage = (3 + obj_player.hp*0.006)*(1 +(global.playerLevel/100))*global.dD;
if (runOnce == true)
{
	runOnce = false;
	if (color == c_aqua)
	{
		image_blend = color;
		hp = 8*choose(0.6,1,1.4)*global.dD;
		maxHp = hp;
		summonTime = (12)*choose(25,30,35);
		summon = false;
		summonAmount = 2;
	}
	if (color == c_red)
	{
		image_blend = color;
		hp = 12*choose(0.6,1,1.4)*global.dD;
		maxHp = hp;
		firerate = (2)*choose(25,30,35);
		shoot = true;
	}
	if (color == c_lime)
	{
		image_blend = color;
		hp = 8*choose(0.6,1,1.4)*global.dD;
		maxHp = hp;
		firerate = (2)*choose(25,30,35);
		shoot = true;
	}
	if (color == c_purple)
	{
		image_blend = color;
		hp = 12*choose(0.6,1,1.4)*global.dD;
		maxHp = hp;
		firerate = (4)*choose(25,30,35);
		shoot = true;
	}
	pointX = choose(-50,-40,-30,30,40,50);
	pointY = choose(-50,-40,-30,30,40,50);
}
// code
if (color != c_lime)
{	
	if (x < obj_player.x){sizeX = -0.5;}
	if (x > obj_player.x){sizeX = 0.5;}
	sizeY = 0.5;
}
if (color == c_lime)
{	
	if (x < obj_player.x){sizeX = -0.65;}
	if (x > obj_player.x){sizeX = 0.65;}
	sizeY = 0.65;
}
image_xscale = sizeX;
image_yscale = sizeY;
depth = -y;
if (color == c_aqua)
{
	if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 30)
	{
		move_towards_point(obj_player.x+pointX,obj_player.y+pointY,1);
	}
	if (summon == false)
	{
		summon = true;
		alarm[0] = summonTime;
	}
}
if (color == c_red)
{
	if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 30)
	{
		move_towards_point(obj_player.x+pointX,obj_player.y+pointY,2);
	}
	if (shoot == true)
	{
		shoot = false;
		alarm[1] = firerate;
	}
}
if (color == c_lime)
{
	if (distance_to_point(obj_boss_theWispMother.x+pointX,obj_boss_theWispMother.y+pointY) > 30)
	{
		move_towards_point(obj_boss_theWispMother.x+pointX,obj_boss_theWispMother.y+pointY,2);
	}
	
	if (shoot == true)
	{
		shoot = false;
		var wispShot = instance_create_depth(x,y,1,obj_wispShot);
		wispShot.image_angle = point_direction(x,y,obj_boss_theWispMother.x,obj_boss_theWispMother.y)+90;
		wispShot.direction = point_direction(x,y,obj_boss_theWispMother.x,obj_boss_theWispMother.y);
		wispShot.speed = 3;
		wispShot.color = c_lime;
		wispShot.image_xscale = 0.6;
		wispShot.image_yscale = 0.6;
		alarm[1] = firerate;
	}
}
if (color == c_purple)
{
	if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 30)
	{
		move_towards_point(obj_player.x+pointX,obj_player.y+pointY,3);
	}
	if (shoot == true)
	{
		shoot = false;

		alarm[1] = firerate;
	}
}
//hp and death
if (hp <= 0)
{
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	repeat(5*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),y-1000,obj_healthOrb);	
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
	instance_destroy();
}