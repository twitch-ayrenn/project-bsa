/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
var enemy = instance_nearest(x,y,par_enemy);
if (destroy == true)
{
	destroy = false;
	alarm[0] = destroyTime;
}
if (instance_exists(par_enemy) && follow == true)
{
	move_towards_point(enemy.x,enemy.y,speed);
	
	if (place_meeting(x,y,enemy))
	{
		var damageDealt = global.damage*1.25;
		var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageDealt;
		with (enemy)
		{	
			hp -= global.damage*1.25;
		}
		var amountHealed = global.damage*global.lifeSteal*1.25;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += global.damage*global.lifeSteal*1.25;
		}
		instance_destroy();
	}
}
if (instance_exists(par_enemy) && follow == false)
{
	if (place_meeting(x,y,enemy))
	{
		var damageDealt = global.damage*0.25;
		var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageDealt;
		with (enemy)
		{	
			hp -= global.damage*0.25;
		}
		var amountHealed = global.damage*0.25*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += global.damage*0.25*global.lifeSteal;
		}
		instance_destroy();
	}
}
