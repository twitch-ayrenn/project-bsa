/// @description Insert description here
// You can write your code in this editor
depth = -6;
image_alpha = 1;
if (destroy == true)
{
	destroy = false;
	
	alarm[1] = destroyTimer;
}
if (dealDamage == true)
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_deadGround))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var damageDealt = global.damage*1.1;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*1.1;
			
			var amountHealed = global.damage*global.lifeSteal*1.1;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal*1.1;
			}
		}
	}
	alarm[0] = damageTimer;
}