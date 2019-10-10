/// @description Insert description here
// You can write your code in this editor
depth = -5;
x = obj_allPlayer.x;
y = obj_allPlayer.y;
var enemy = instance_nearest(x,y,par_enemy);
if (dealDamageTimes > 0){image_index = 1;}
if (dealDamageTimes == 0){image_index = 0;}
if (dealDamage == true && dealDamageTimes > 0)
{
	dealDamageTimes--;
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_shadowAttackRange))
		{
			var damageDealt = global.damage;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage;
			
			image_blend = c_red;
			
			var amountHealed = global.damage*global.lifeSteal;
			var healText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal;
			}
		}
	}
	alarm[0] = damageTimer;
}