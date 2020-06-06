/// @description Insert description here
image_alpha = 0.8;
depth = -y-100;
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with(obj_camera){shake_remain += 2;}
	
	var damageDealt = 20;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= 20;
	}
	var amountHealed = 20;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += 20;
	}
	instance_create_depth(x,y,depth,obj_bigFuckingPuddle);
	instance_destroy();
}
