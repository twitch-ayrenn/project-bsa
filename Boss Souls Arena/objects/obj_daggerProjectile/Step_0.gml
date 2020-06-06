/// @description Insert description here
depth = -y;
stacks++;
if (stacks >= destroyTime)
{
	instance_destroy();
}
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var damageDealt = global.damage;
	var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-13,13),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage;
	}
	with(obj_camera){shake_remain += 0.125;}
	var amountHealed = global.damage*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-12,12),obj_allPlayer.y+irandom_range(-7,7),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*global.lifeSteal;
	}
	instance_destroy();
}

