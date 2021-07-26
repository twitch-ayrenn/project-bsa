/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
var enemy = instance_nearest(x,y,par_enemy);
if (destroy == true)
{
	destroy = false;
	alarm[0] = destroyTime;
}
if (place_meeting(x,y,obj_noGoZone) && sprite_index != spr_plagueCarrier){instance_destroy();}
if (direction > 90 && direction < 270){image_xscale = -size;}
else{image_xscale = size;}
if (instance_exists(obj_allBoss))
{
	if (obj_allBoss.image_alpha > 0 && obj_allBoss.y > 350 && x < 830 && x > 400)
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
		var damageDealt = global.damage;
		var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-13,13),enemy.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageDealt;
		with (enemy)
		{	
			hp -= damageDealt;
		}
		var amountHealed = global.damage*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += amountHealed;
		}
		instance_destroy();
	}
}

