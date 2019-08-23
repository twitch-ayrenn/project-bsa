/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (returnBack == true)
{
	returnBack = false;
	alarm[1] = (4)*30;
}
if (goBack == true)
{
	goBack = false;
	direction = point_direction(x,y,obj_boss_bloodPrince.x,obj_boss_bloodPrince.y);
}
if (destroy == true)
{
	destroy = false;
	alarm[0] = (10)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget = instance_nearest(x,y,obj_ads_bloodBatRetruning).damage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= instance_nearest(x,y,obj_ads_bloodBatRetruning).damage;
	}
	var healBossAmount = instance_nearest(x,y,obj_ads_bloodBatRetruning).damage*0.4;
	var healBoss = instance_create_depth(obj_boss_bloodPrince.x+irandom_range(-8,8),obj_boss_bloodPrince.y+irandom_range(-5,5),obj_boss_bloodPrince.depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;
	with (obj_boss_bloodPrince)
	{
		hp += instance_nearest(x,y,obj_ads_bloodBatRetruning).damage*0.4;
	}
	instance_destroy();
}