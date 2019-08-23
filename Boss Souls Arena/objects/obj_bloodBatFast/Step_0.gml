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
	var damageToTarget = global.dkiProjectileDamage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= global.dkiProjectileDamage;
	}
	if (instance_exists(obj_ads_vampire))
	{
		var healBossAmount = global.dkiProjectileDamage*0.4;
		var healBoss = instance_create_depth(obj_ads_vampire.x+irandom_range(-8,8),obj_ads_vampire.y+irandom_range(-5,5),obj_ads_vampire.depth-10,obj_textMaker);
		healBoss.color = c_red;
		healBoss.text = healBossAmount;
		with (obj_ads_vampire)
		{
			hp += global.dkiProjectileDamage*0.4;
		}
	}
	instance_destroy();
}