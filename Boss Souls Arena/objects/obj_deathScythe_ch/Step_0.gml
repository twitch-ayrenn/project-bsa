/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_ch_dl_deathGeneralZarodil) == false){instance_destroy();}
playerAngle = point_direction(obj_ch_dl_deathGeneralZarodil.x,obj_ch_dl_deathGeneralZarodil.y,
obj_player.x,obj_player.y);
depth = obj_ch_dl_deathGeneralZarodil.depth;
x = obj_ch_dl_deathGeneralZarodil.x;
y = obj_ch_dl_deathGeneralZarodil.y;
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
		var damageToTarget =global.dgzScytheDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (obj_player)
		{
			hp -= global.dgzScytheDamage;
		}
		with (obj_boss_deathGeneralZarodil)
		{
			var healBossAmount = global.dgzScytheDamage*0.4;
			var healBoss = instance_create_depth(obj_ch_dl_deathGeneralZarodil.x+irandom_range(-8,8),obj_ch_dl_deathGeneralZarodil.y+irandom_range(-5,5),obj_ch_dl_deathGeneralZarodil.depth-10,obj_textMaker);
			healBoss.color = c_red;
			healBoss.text = healBossAmount;		
			with (obj_boss_deathGeneralZarodil)
			{
				hp += global.dgzScytheDamage*0.4;
			}
		}
	}
}
if (state == DeathScytheState.Attack)
{
		
}