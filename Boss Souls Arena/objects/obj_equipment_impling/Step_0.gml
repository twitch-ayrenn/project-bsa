/// @description Insert description here
image_alpha = 1;
depth = -y-100;
if (direction >= 90 && direction < 270)
{
	image_xscale = -size;	
}
else
{
	image_xscale = size;	
}
image_yscale = size;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with(obj_camera){shake_remain += obj_equipment_impling.image_xscale;}
	
	var damageDealt = global.damage*5*global.player.conjurationPower;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*5*global.player.conjurationPower;
	}

	var amountHealed = global.damage*5*global.player.conjurationPower*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*5*global.player.conjurationPower*global.lifeSteal;
	}
	instance_destroy();
}
