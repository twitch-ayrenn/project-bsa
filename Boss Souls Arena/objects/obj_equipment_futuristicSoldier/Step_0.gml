/// @description Insert description here
depth = -y;
if (distance_to_point(obj_allPlayer.x+xExtra,obj_allPlayer.y+yExtra) > 15)
{
	move_towards_point(obj_allPlayer.x+xExtra,obj_allPlayer.y+yExtra,obj_allPlayer.actualSpeed*1.1);
	state = 1;
}
if (distance_to_point(obj_allPlayer.x+xExtra,obj_allPlayer.y+yExtra) < 15)
{
	speed = 0;
	state = 0;
}
//visuals
if (state == 0)
{
	sprite_index = idleSprite;
}
if (state == 1)
{
	sprite_index = walkSprite;
}
//
if (mouse_x >= x){image_xscale = 1;}
if (mouse_x < x){image_xscale = -1;}
//
if (shoot == true)
{
	shoot = false;
	
	var dagger = instance_create_depth(x,y,depth+1,obj_fsBolt);
	dagger.direction = point_direction(x,y,mouse_x,mouse_y);
	dagger.speed = 8.5;
	dagger.image_angle = dagger.direction+90;
	dagger.image_xscale = 0.75;
	dagger.image_yscale = 0.75;
	dagger.image_alpha = 0.75;
	if (soldierType == 0)
	{
		dagger.image_blend = c_lime;
	}
	if (soldierType == 1)
	{
		dagger.image_blend = c_aqua;
	}
	if (soldierType == 3)
	{
		dagger.image_blend = c_silver;
	}
	
	alarm[0] = global.fSFireRate;
}