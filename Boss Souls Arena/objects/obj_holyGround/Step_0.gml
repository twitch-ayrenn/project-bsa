/// @description Insert description here
// You can write your code in this editor
depth = -6;
image_alpha = 0.75;
if (destroy == true)
{
	destroy = false;
	
	alarm[1] = (8)*30;
}
if (dealDamage == true && instance_exists(obj_allBoss))
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_holyGround))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,obj_allPlayer);	
			var damageDealt = global.damage*3.5;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*3.5;
			
			image_blend = c_red;
			
			var amountHealed = global.damage*global.lifeSteal*3.5;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal*3.5;
			}
		}
	}
	alarm[0] = damageTimer;
}