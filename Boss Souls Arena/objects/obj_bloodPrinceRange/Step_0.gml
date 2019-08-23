/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
x = obj_bloodPrinceStatue.x;
y = obj_bloodPrinceStatue.y+110;
if (size >= 1.7)
{
	growAmount = -0.02;	
}
if (size <= 0.3)
{
	growAmount = 0.005;
}
if (grow == true)
{
	grow = false;
	size += growAmount;
	alarm[0] = 1;
}
image_xscale = size;
image_yscale = size;
if (place_meeting(x,y,obj_player))
{
	with (obj_player)
	{
		hp -= (1 + hp*0.15)/30;
		var damageToTarget = (1 + hp*0.15)/30;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		if (instance_exists(obj_boss_bloodPrince))
		{
			var healBossAmount = ((1 + obj_player.hp*0.15)/30)*0.4;
			var healBoss = instance_create_depth(obj_boss_bloodPrince.x+irandom_range(-8,8),obj_boss_bloodPrince.y+irandom_range(-5,5),obj_boss_bloodPrince.depth-10,obj_textMaker);
			healBoss.color = c_red;
			healBoss.text = healBossAmount;		
			with (obj_boss_bloodPrince)
			{
				hp += ((1 + obj_player.hp*0.15)/30)*0.4;
			}
		}
	}
}