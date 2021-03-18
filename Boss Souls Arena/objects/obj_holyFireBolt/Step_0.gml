/// @description Insert description here
image_alpha = 0.8;
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
if (place_meeting(x,y,obj_noGoZone) && dontDestroy == false){instance_destroy();}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with(obj_camera){shake_remain += 0.5;}
	
	var damageDealt = global.damage*2*type;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	enemy.hp -= global.damage*2*type;
	
	var amountHealed = global.damage*2*global.lifeSteal*type;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	obj_allPlayer.hp += global.damage*2*global.lifeSteal*type;
	instance_destroy();
}
