/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (0.8*global.redWispRangeBoost)*30;
}
move_towards_point(obj_player.x,obj_player.y,4);
image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
var enemy = instance_nearest(x,y,par_enemy);
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

	instance_destroy();
}
if (place_meeting(x,y,obj_player))
{
	var amountHealed = global.damage*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += global.damage*global.bookOfHealingHealBoost;
	}
	instance_destroy();
}
