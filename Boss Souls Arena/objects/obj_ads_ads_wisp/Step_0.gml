/// @description Insert description here
//run once
image_alpha = 0.75;
damage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/50))*global.dD;
if (runOnce == true)
{
	runOnce = false;
	if (color == c_maroon)
	{
		image_blend = color;
		hp = 150*choose(0.6,1,1.4)*(1 +(global.playerLevel/50));;
		maxHp = hp;
		firerate = (2)*choose(25,30,35);
		damage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/50));
		shoot = true;
	}
	if (color == c_green)
	{
		image_blend = color;
		hp = 100*choose(0.6,1,1.4)*(1 +(global.playerLevel/50));;
		maxHp = hp;
		firerate = (2)*choose(25,30,35);
		shoot = true;
	}
	pointX = choose(-50,-40,-30,30,40,50);
	pointY = choose(-50,-40,-30,30,40,50);
}
// code
if (color != c_green)
{	
	if (x < obj_player.x){sizeX = -0.5;}
	if (x > obj_player.x){sizeX = 0.5;}
	sizeY = 0.5;
}
if (color == c_green)
{	
	if (x < obj_player.x){sizeX = -0.65;}
	if (x > obj_player.x){sizeX = 0.65;}
	sizeY = 0.65;
}
image_xscale = sizeX;
image_yscale = sizeY;
depth = -y;
if (color == c_maroon)
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
if (color == c_green)
{
	var boss = obj_player;
	if (instance_exists(obj_boss_deathKingZarok))
	{
		boss = obj_boss_deathKingZarok;
	}
	if (instance_exists(obj_ch_dl_deathQueenZeria))
	{
		boss = obj_ch_dl_deathQueenZeria;
	}
	if (instance_exists(obj_ch_dl_deathKingZarok))
	{
		boss = obj_ch_dl_deathKingZarok;
	}
	if (distance_to_point(boss.x+pointX,boss.y+pointY) > 30)
	{
		move_towards_point(boss.x+pointX,boss.y+pointY,3);
	}
	
	if (shoot == true)
	{
		shoot = false;
		var wispShot = instance_create_depth(x,y,1,obj_wispShot_weak);
		wispShot.image_angle = point_direction(x,y,boss.x,boss.y)+90;
		wispShot.direction = point_direction(x,y,boss.x,boss.y);
		wispShot.speed = 4;
		wispShot.color = c_green;
		wispShot.image_xscale = 0.6;
		wispShot.image_yscale = 0.6;
		alarm[1] = firerate;
	}
}
//hp and death
if (hp <= 0)
{
	repeat(2*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
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
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 3;
		}
	}
	instance_destroy();
}