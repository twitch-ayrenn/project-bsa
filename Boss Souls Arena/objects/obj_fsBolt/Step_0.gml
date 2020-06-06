/// @description Insert description here
image_alpha = 0.8;
depth = -y+100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{	
	var damageDealt = global.damage*0.35;
	var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-13,13),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*0.35;
	}
	var amountHealed = global.damage*0.35*global.lifeSteal;
	with (obj_allPlayer)
	{
		hp += amountHealed;
	}
	instance_destroy();
}
