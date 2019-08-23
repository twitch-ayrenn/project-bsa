/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (0.35)*30*global.redWispRangeBoost;
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var player = instance_nearest(x,y,obj_player);
	var damageDealt = (player.maxHp/200);
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{
		var player = instance_nearest(x,y,obj_player);
		hp -= (player.maxHp/200);
	}
	var amountHealed = (player.maxHp/200)*0.4*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		var player = instance_nearest(x,y,obj_player);
		hp += (player.maxHp/200)*0.4*global.bookOfHealingHealBoost;
	}
	instance_destroy();
}
