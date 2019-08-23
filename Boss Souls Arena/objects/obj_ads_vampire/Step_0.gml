/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
fase4Damage = (16 + obj_player.hp*0.032)*(1 +(global.playerLevel/50))*global.dD;
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
if (fase == 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase4Hp;
		maxHp = hp;
	}
	if (distance_to_point(obj_player.x + pointX,obj_player.y + pointY) > 6)
	{
		move_towards_point(obj_player.x + pointX,obj_player.y + pointY,3);	
	}
	if (changeLocation == true)
	{
		changeLocation = false;
		alarm[1] = (3)*30;
	}
	if (fase4Shoot == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		fase4Shoot = false;
		var typeOfBat = choose(1,2);
		if (typeOfBat == 1)
		{
			if (obj_player.class != Class.The_BloodKnight)
			{
				var bigBat = instance_create_depth(x,y,1,obj_ads_ads_bloodBatBig);
				bigBat.damage = global.dkiProjectileDamage;
			}
			if (obj_player.class == Class.The_BloodKnight)
			{
				var fastBat = instance_create_depth(x,y,1,obj_bloodBatFast);
				fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
				fastBat.speed = 6; 
				fastBat.damage = global.dkiProjectileDamage;
			}
		}
		if (typeOfBat == 2)
		{
			var fastBat = instance_create_depth(x,y,1,obj_bloodBatFast);
			fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			fastBat.speed = 6; 
			fastBat.damage = global.dkiProjectileDamage;
		}
		alarm[0] = fase4Firerate;
		fase4Firerate = (0.7)*choose(20,30,40);
	}
}
if (hp <= 0 && fase == 2)
{
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