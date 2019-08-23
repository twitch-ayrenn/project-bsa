/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_alpha = 0.9;
image_blend = color;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (6)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	if (color != c_green)
	{
		var damageToTarget = global.dkiProjectileDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (target)
		{
			hp -= global.dkiProjectileDamage;
		}
	}
	if (color == c_green)
	{
		var amountHealed = 25;
		var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (target)
		{
			hp += 25;
		}
	}
	instance_destroy();
}
if (place_meeting(x,y,par_enemy) && color == c_green)
{
	var targetEnemy = instance_nearest(x,y,par_enemy);
	var healBossAmount = 25;
	var healBoss = instance_create_depth(targetEnemy.x+irandom_range(-8,8),targetEnemy.y+irandom_range(-5,5),targetEnemy.depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;		
	with (targetEnemy)
	{
		hp += 25;
	}
	instance_destroy();
}