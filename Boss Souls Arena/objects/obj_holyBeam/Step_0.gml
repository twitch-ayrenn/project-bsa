/// @description Insert description here
// You can write your code in this editor
depth = -y;
image_alpha = 1;
var stopDistance = 5;
if (global.autoAim == false)
{
	if (distance_to_point(mouse_x,mouse_y) > stopDistance)
	{
		move_towards_point(mouse_x,mouse_y,global.player.moveSpeed*1.6)
	}
	if (distance_to_point(mouse_x,mouse_y) <= stopDistance)
	{
		speed = 0;
	}
}
if (global.autoAim == true && instance_exists(obj_allBoss))
{
	if (distance_to_point(obj_allBoss.x,obj_allBoss.y) > stopDistance)
	{
		move_towards_point(obj_allBoss.x,obj_allBoss.y,global.player.moveSpeed*1.2)
	}
	if (distance_to_point(obj_allBoss.x,obj_allBoss.y) <= stopDistance)
	{
		speed = 0;
	}
}
if (destroy == true)
{
	destroy = false;
	alarm[1] = (3)*30;	
}
if (dealDamage == true)
{
	dealDamage = false;
	with(obj_allBoss)
	{
		if (place_meeting(x,y,obj_holyBeam))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,global.player);	
			var damageDealt = global.damage*1;
			var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-13,13),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*1;
			
			var amountHealed = global.damage*1*global.lifeSteal;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (obj_allPlayer)
			{
				hp += global.damage*1*global.lifeSteal;
			}
		}
	}
	alarm[0] = damageTimer;
}
if (place_meeting(x,y,obj_allBoss) && instance_exists(obj_allBoss))
{
	image_blend = c_aqua;
	global.player.agentSpeed = 1.2;
}
if (!place_meeting(x,y,obj_allBoss) && instance_exists(obj_allBoss))
{
	image_blend = c_teal;
	global.player.agentSpeed = 1;
}