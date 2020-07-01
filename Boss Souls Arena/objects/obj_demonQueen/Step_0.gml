/// @description Insert description here
depth = -y-100;
if (instance_exists(obj_allBoss)){x = obj_allBoss.x;}
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
if (dealDamageOnce == false && destroy == false){speed *= 0.9;}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy) && dealDamageOnce == true)
{	
	dealDamageOnce = false;
	var damageDealt = global.damage*15;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-200,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*15;
	}
	with(obj_camera){shake_remain = 6;}
	var amountHealed = global.damage*15*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-1,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*15*global.lifeSteal;
	}
	destroy = true;
}
