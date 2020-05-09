/// @description Insert description here
image_alpha = 0.85;
depth = -y-100;
//visual

if (direction >= 180 && direction < 270)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}
//
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var damageDealt = global.damage*2.25*global.player.conjurationPower;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*2.25*global.player.conjurationPower;
	}
	
	with(obj_camera){shake_remain += 4}
	
	var amountHealed = global.damage*2.25*global.lifeSteal*global.player.conjurationPower;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*2.25*global.lifeSteal*global.player.conjurationPower;
	}
	instance_destroy();
}
