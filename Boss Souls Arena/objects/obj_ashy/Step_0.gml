	/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-1;
if (distance_to_point(obj_player.x+10,obj_player.y-15) > 16)
{
	move_towards_point(obj_player.x+10,obj_player.y-15,6)
}
if (distance_to_point(obj_player.x+10,obj_player.y-15) <=16)
{
	x = obj_player.x+15;
	y = obj_player.y-8;
}
if (canAttack == true)
{
	canAttack = false;
	var firebolt = instance_create_depth(x,y,depth-5,obj_firebolt);
	firebolt.direction = point_direction(x,y,mouse_x,mouse_y);
	firebolt.speed = 5;
	firebolt.image_angle = point_direction(x,y,mouse_x,mouse_y)+90;
	firebolt.image_xscale = 0.3;
	firebolt.image_yscale = 0.3;
}
if (obj_player.hp <= obj_player.maxHp*0.2)
{
	with(obj_player)
	{
		hp += maxHp*0.3;
	}
	var ashyAngle = 0;
	repeat(int64(24*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
	{
		var ashyDeathShot = instance_create_depth(x,y,depth-1,obj_firebolt);
			ashyDeathShot.direction = ashyAngle;
			ashyDeathShot.speed = 6;
			ashyDeathShot.image_angle = ashyAngle+90;
			ashyDeathShot.image_xscale = 0.6;
			ashyDeathShot.image_yscale = 0.6;
			ashyAngle += 360/(int64(24*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost));
	}
	with (obj_camera){shake_remain += 9;}
	instance_destroy();
}