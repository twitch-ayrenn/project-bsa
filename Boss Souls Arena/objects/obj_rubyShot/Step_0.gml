/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
image_speed = 0;
if (returnToPlayer == true)
{
	returnToPlayer = false;
	alarm[0] = ((1)*global.redWispRangeBoost)*30;
}
if (doReturn == true)
{
	speed = 0;
	move_towards_point(obj_player.x,obj_player.y,4);
	image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
}
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
	var amountHealed = global.cloakDamageBoost*0.8*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += global.damage*0.8*global.bookOfHealingHealBoost;
	}
	instance_destroy();
}
if (place_meeting(x,y,obj_player) && doReturn == true)
{
	var amountHealed = global.damage*0.2*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += global.damage*0.2*global.bookOfHealingHealBoost;
	}
	instance_destroy();
}
