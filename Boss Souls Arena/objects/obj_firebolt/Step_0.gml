/// @description Insert description here
image_alpha = 0.8;
depth = -y-100;
if (grow == true)
{
	image_xscale += 0.04;
	image_yscale = image_xscale;
}
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
	
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	if (image_xscale < 2 && image_xscale > 1)
	{
		var fbPAngleL = 0;
		var fbPAmountL = 9;
		repeat(fbPAmountL)
		{
			var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
			fireBolt.direction = fbPAngleL;
			fireBolt.image_angle = fireBolt.direction+90;
			fireBolt.speed = 5;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = fireBolt.image_xscale;
			fireBolt.timeToDestroy = 20;
			fbPAngleL += 360/fbPAmountL;
		}
	}
	
	var damageDealt = global.damage;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage;
	}
	var amountHealed = global.damage*0.25;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*0.25;
	}
	instance_destroy();
}
if (image_xscale >= 3)
{
	var fbPAngleL = 0;
	var fbPAmountL = 9;
	repeat(fbPAmountL)
	{
		var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
		fireBolt.direction = fbPAngleL;
		fireBolt.image_angle = fireBolt.direction+90;
		fireBolt.speed = 5;
		fireBolt.image_xscale = 1.9;
		fireBolt.image_yscale = fireBolt.image_xscale;
		fireBolt.timeToDestroy = 20;
		fbPAngleL += 360/fbPAmountL;
	}
	instance_destroy();
}