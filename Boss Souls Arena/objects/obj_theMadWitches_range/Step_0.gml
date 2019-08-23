/// @description Insert description here
// You can write your code in this editor
depth = -y-1000;
x = 2727;
y = 2071;
image_xscale = size;
image_yscale = size;
if (instance_exists(obj_boss_theGreenWitch) && instance_exists(obj_boss_theYellowWitch) && instance_exists(obj_boss_theOrangeWitch))
{
	size = 0.9;
}
if (instance_exists(obj_boss_theGreenWitch) == false && instance_exists(obj_boss_theYellowWitch) && instance_exists(obj_boss_theOrangeWitch))
{
	size = 0.65;
}
if (instance_exists(obj_boss_theGreenWitch) == false && instance_exists(obj_boss_theYellowWitch) && instance_exists(obj_boss_theOrangeWitch) == false)
{
	size = 0.35;
}
if (instance_exists(obj_boss_theGreenWitch) == false && instance_exists(obj_boss_theYellowWitch) == false && instance_exists(obj_boss_theOrangeWitch) == false)
{
	instance_destroy();
}
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		hp -= (1 + hp*0.15)/30;
		var damageToTarget = (1 + obj_player.hp*0.15)/30;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}