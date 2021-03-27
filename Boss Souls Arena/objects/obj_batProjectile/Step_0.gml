/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
var enemy = instance_nearest(x,y,par_enemy);
if (destroy == true)
{
	destroy = false;
	alarm[0] = destroyTime;
}
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
if (instance_exists(obj_allBoss))
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
		move_towards_point(enemy.x,enemy.y,speed);
	}
	if (place_meeting(x,y,enemy))
	{
		var damageDealt = 1;
		if (sprite_index == spr_batprojectile_long){damageDealt = 5;}
		var damageText = instance_create_depth(enemy.x+irandom_range(-18,18),enemy.y+irandom_range(-14,14),enemy.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageDealt;
		with (enemy)
		{	
			hp -= damageDealt;
		}
		var amountHealed = 1*global.lifeSteal;
		if (sprite_index == spr_batprojectile_long){amountHealed = 5*global.lifeSteal;}
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-16,16),obj_allPlayer.y+irandom_range(-12,12),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += amountHealed;
		}
		instance_destroy();
	}
}

