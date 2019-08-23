/// @description Insert description here
// vars
depth = -y;
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
image_xscale = sizeX;
image_yscale = sizeY;
fase1Damage = (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/50));
//fase 1
if (fase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase1Hp;
		maxHp = hp;
	}
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,fase1Speed);
	if (fase1Shoot == true)
	{
		fase1Shoot = false;
		var blodKlot = instance_create_depth(x,y,1,obj_klot_weak);
		blodKlot.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.speed = 4 + fase1Speed;
		blodKlot.color = c_maroon;
		blodKlot.damage = global.dkiProjectileDamage;
		blodKlot.image_xscale = 1;
		blodKlot.image_yscale = 1;
		alarm[0] = fase1Firerate;
	}
}
if (hp <= 0 && fase == 1)
{
	//player shit
	repeat(5*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
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