/// @description Insert description here
// You can write your code in this editor
depth = -5;
if (instance_exists(global.player))
{
	x = global.player.x;
	y = global.player.y;
}
if (instance_exists(global.player) == false)
{
	instance_destroy();
}
var enemy = instance_nearest(x,y,par_enemy);
if (dealDamageTimes > 0){image_index = 1; global.player.agentSpeed = 1.1;}
if (dealDamageTimes == 0){image_index = 0; global.player.agentSpeed = 1;}
if (dealDamage == true && dealDamageTimes > 0)
{
	dealDamageTimes--;
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_agentDamageArea))
		{
			var damageDealt = global.damage*5;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*5;
			
			var amountHealed = global.damage*global.lifeSteal*5;
			var healText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal*5;
			}
		}
	}
	alarm[0] = damageTimer;
}