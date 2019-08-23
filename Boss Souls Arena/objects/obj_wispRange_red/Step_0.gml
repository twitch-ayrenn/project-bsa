/// @description Insert description here
// You can write your code in this editor
depth = -y-1000;
if (instance_exists(obj_boss_theWispMother))
{
	x = obj_wispStatue.x;
	y = obj_wispStatue.y;
}
size = 1.05;
image_xscale = size;
image_yscale = size;
if (obj_boss_theWispMother.fase != 2)
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