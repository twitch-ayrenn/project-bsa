/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_alpha = 0.9;
image_blend = color;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (6)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	if (color != c_lime)
	{
		var damageToTarget =  instance_nearest(x,y,obj_wispShot).damage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (target)
		{
			hp -= instance_nearest(x,y,obj_wispShot).damage;
		}
		with (obj_camera){shake_remain += 0.7;}
	}
	if (color == c_lime)
	{
		var amountHealed = 10;
		var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (target)
		{
			hp += 10;
		}
	}
	instance_destroy();
}
if (place_meeting(x,y,obj_boss_theWispMother) && color == c_lime)
{
	var healBossAmount = 5;
	var healBoss = instance_create_depth(obj_boss_theWispMother.x+irandom_range(-8,8),obj_boss_theWispMother.y+irandom_range(-5,5),obj_boss_theWispMother.depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;		
	with (obj_boss_theWispMother)
	{
		hp += 5;
	}
	instance_destroy();
}