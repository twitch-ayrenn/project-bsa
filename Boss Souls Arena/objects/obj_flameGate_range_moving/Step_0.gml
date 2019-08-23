/// @description Insert description here
// You can write your code in this editor
depth = -y-1000;
x = obj_theInfernalStatue.x;
y = obj_theInfernalStatue.y+100;
image_angle -= 1;
image_xscale = size;
image_yscale = size;
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		hp -= 1/5;
		var damageToTarget = 1;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}
if (size >= 3)
{
	growAmount = -0.02;
}
if (size <= 0.1)
{
	growAmount = 0.02;
	with (obj_boss_theFlameGate)
	{
		phase4DoOneShot = true;	
	}
}
if (grow == true)
{
	grow = false;
	size += growAmount;
	alarm[0] = 1;
}