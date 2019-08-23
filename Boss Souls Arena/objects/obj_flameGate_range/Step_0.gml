/// @description Insert description here
// You can write your code in this editor
depth = -y-1000;
x = obj_theInfernalStatue.x;
y = obj_theInfernalStatue.y+100;
image_xscale = size;
image_yscale = size;
if (size >= 1)
{
	growAmount = -0.01;	
}
if (size <= 0.3)
{
	growAmount = 0.01;
	with (obj_boss_theFlameGate)
	{
		if (phase == 4)
		{
			phase4DoOneShot = true;	
		}
	}
}
if (grow == true)
{
	grow = false;
	size += growAmount;
	alarm[0] = 1;
}
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		hp -= ((1 + hp*0.15)/30);
		var damageToTarget = ((1 + hp*0.15)/30);
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}