/// @description Insert description here
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with(obj_camera){shake_remain += 0.125;}
	
	var damageDealt = global.damage*1;
	var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-13,13),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*1;
	}
	var amountHealed = global.damage*1*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*1*global.lifeSteal;
	}
	instance_destroy();
}
