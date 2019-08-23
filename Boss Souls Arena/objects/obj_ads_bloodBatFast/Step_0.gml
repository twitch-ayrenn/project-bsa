/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (4)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget = instance_nearest(x,y,obj_ads_bloodBatFast).damage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= instance_nearest(x,y,obj_ads_bloodBatFast).damage;
	}
	with (obj_camera){shake_remain += 1;}
	var healBossAmount = instance_nearest(x,y,obj_ads_bloodBatFast).damage*0.4;
	var healBoss = instance_create_depth(obj_boss_bloodPrince.x+irandom_range(-8,8),obj_boss_bloodPrince.y+irandom_range(-5,5),obj_boss_bloodPrince.depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;
	with (obj_boss_bloodPrince)
	{
		hp += instance_nearest(x,y,obj_ads_bloodBatFast).damage*0.4;
	}
	instance_destroy();
}