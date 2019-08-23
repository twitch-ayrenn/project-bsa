	/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-1;
if (distance_to_point(obj_player.x+10,obj_player.y-15) > 16)
{
	move_towards_point(obj_player.x+10,obj_player.y-15,obj_player.actualSpeed+0.5)
}
if (distance_to_point(obj_player.x+10,obj_player.y-15) <= 16)
{
	move_towards_point(obj_player.x+10,obj_player.y-15,1)
}
if (canAttack == true && attack == true)
{
	canAttack = false;
	attack = false;
	if (obj_player.class == Class.The_Assasin)
	{
		x = mouse_x;
		y = mouse_y;
		var angle = 10;
		repeat(int64(8*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
		{
			var dagger = instance_create_depth(x,y,depth-2,obj_daggerProjectile);
			dagger.direction = angle;
			dagger.speed = 5;
			dagger.image_angle = angle-90;
			dagger.image_xscale = 0.4;
			dagger.image_yscale = 0.6;
			dagger.image_blend = c_aqua;
			angle += 360/(int64(8*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost));
		}
	}
	if (obj_player.class == Class.The_Warrior)
	{
		var axe = instance_create_depth(x,y,depth-2,obj_item_qH_warriorAxe);
		axe.direction = point_direction(x,y,mouse_x,mouse_y);
		axe.speed = 4;
	}
	if (obj_player.class == Class.The_Mage)
	{
		canAttack = false;
		var firebolt = instance_create_depth(x,y+5,depth-5,obj_firebolt);
		firebolt.direction = point_direction(x,y,mouse_x,mouse_y);
		firebolt.speed = 6;
		firebolt.image_angle = point_direction(x,y,mouse_x,mouse_y)+90;
		firebolt.image_xscale = 0.5;
		firebolt.image_yscale = 0.5;
		firebolt.image_blend = c_aqua;
	}
	if (obj_player.class == Class.The_Shopkeeper)
	{
		var sprayShot = instance_create_depth(x,y+3,depth+1,obj_coinShot);
		sprayShot.direction = point_direction(x,y,mouse_x,mouse_y);
		sprayShot.speed = 6;
		sprayShot.image_angle = sprayShot.direction;
		sprayShot.image_xscale = 0.65;
		sprayShot.image_yscale = 0.65;
		sprayShot.image_blend = make_color_rgb(70,255,255);
	}
	if (obj_player.class == Class.The_BloodKnight)
	{
		if (obj_player.batAttack == 1)
		{
			repeat(int64(1*global.portalSummoningBoost*global.wispSoulSummoningBoost*global.kingsHeadSummongingBoost*global.scarletsProjectileBoost*global.vampireCloakProjectileBoost))
			{
				var batShot = instance_create_depth(x+irandom_range(-25,25),y+3,depth+1,obj_batProjectile);
				batShot.speed = obj_player.projectileSpeed;
				batShot.image_blend = make_color_rgb(70,255,255);
			}
		}
		if (obj_player.batAttack == 2)
		{
			repeat(int64(2*global.portalSummoningBoost*global.wispSoulSummoningBoost*global.kingsHeadSummongingBoost*global.scarletsProjectileBoost*global.vampireCloakProjectileBoost))
			{
				var batShot = instance_create_depth(x+irandom_range(-25,25),y+3,depth+1,obj_batProjectile);
				batShot.speed = obj_player.projectileSpeed;
				batShot.image_blend = make_color_rgb(70,255,255);
			}
		}
		if (obj_player.batAttack == 3)
		{
			repeat(int64(3*global.portalSummoningBoost*global.wispSoulSummoningBoost*global.kingsHeadSummongingBoost*global.scarletsProjectileBoost*global.vampireCloakProjectileBoost))
			{
				var batShot = instance_create_depth(x+irandom_range(-25,25),y+3,depth+1,obj_batProjectile);
				batShot.speed = obj_player.projectileSpeed;
				batShot.image_blend = make_color_rgb(70,255,255);
			}
		}
	}
	alarm[0] = (1)*30;
}