/// @description Insert description here
image_alpha = 0.8;
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{	
	var damageDealt = global.damage*0.2;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*0.2;
	}
	
	with (obj_allPlayer)
	{
		hp += global.damage*global.lifeSteal*0.2;
	}
	
	instance_destroy();
}
