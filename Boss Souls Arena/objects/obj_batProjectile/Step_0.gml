/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = destroyTime;
}
if (instance_exists(par_enemy))
{
	if (follow == true)
	{
		var enemy = instance_nearest(x,y,par_enemy);
		move_towards_point(enemy.x,enemy.y,speed);
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
		var amountHealed = global.damage;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_player)
		{
			hp += global.damage;
		}
		instance_destroy();
	}
}
