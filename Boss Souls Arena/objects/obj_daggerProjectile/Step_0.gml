/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
stacks++;
if (stacks >= 13)
{
	instance_destroy();
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
	with (obj_camera){shake_remain += 0.8;}
	var amountHealed = global.damage*0.25;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += global.damage*0.25;
	}
	instance_destroy();
}
