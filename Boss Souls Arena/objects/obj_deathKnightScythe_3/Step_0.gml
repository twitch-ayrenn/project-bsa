/// @description Insert description here
// You can write your code in this editor
depth = obj_ads_deathKnights_3.depth;
x = obj_ads_deathKnights_3.x;
y = obj_ads_deathKnights_3.y;
if (state == DeathScytheState.Still)
{
	image_angle = 0;
	image_xscale = size;
}
if (state == DeathScytheState.Attack)
{
	if (doAttack == true)
	{
		doAttack = false;
	}
	if (image_angle > 360)
	{
		doAttack = false;
		angleIncrease *= -1;
		global.spinTimes -= 1;
		image_xscale *= -1;
	}
	if (image_angle < 0)
	{
		doAttack = false;
		angleIncrease *= -1;
		global.spinTimes -= 1;
		image_xscale *= -1;
	}
	if (global.spinTimes > 0)
	{
		image_angle += angleIncrease;
	}
	if (global.spinTimes == 0)
	{
		state = DeathScytheState.Still;
	}
	if (place_meeting(x,y,obj_player))
	{
		var damageToTarget = global.dkScytheDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (obj_player)
		{
			hp -= global.dkScytheDamage;
		}
		with (obj_ads_deathKnights_3)
		{
			var healBossAmount = global.dkScytheDamage*0.4;
			var healBoss = instance_create_depth(obj_ads_deathKnights_3.x+irandom_range(-8,8),obj_ads_deathKnights_3.y+irandom_range(-5,5),obj_ads_deathKnights_3.depth-10,obj_textMaker);
			healBoss.color = c_red;
			healBoss.text = healBossAmount;		
			with (obj_ads_deathKnights_3)
			{
				hp += global.dkScytheDamage*0.4;
			}
		}
	}
}