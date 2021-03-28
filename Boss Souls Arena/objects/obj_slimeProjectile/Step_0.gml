/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
var enemy = obj_allBoss;
if (destroy == true)
{
	destroy = false;
	alarm[0] = destroyTime;
}
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
if (instance_exists(enemy))
{
	if (obj_allBoss.image_alpha > 0)
	{
		follow = true;	
	}
	else
	{
		follow = false;	
	}
	if (follow == true)
	{
		move_towards_point(enemy.x,enemy.y,5);
	}
	if (place_meeting(x,y,enemy))
	{
		var damageDealt = global.damage;
		var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageDealt;
		with (enemy)
		{	
			hp -= global.damage;
		}
		var amountHealed = global.damage*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += global.damage*global.lifeSteal;
		}
		instance_destroy();
	}
}

