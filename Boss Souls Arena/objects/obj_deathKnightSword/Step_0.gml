/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_angle += 35;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (time)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget = global.dkProjectileAttacks;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= global.dkProjectileAttacks;
	}
	with (obj_camera){shake_remain += 2;}
	with (par_deathKnights)
	{
		var healBossAmount = global.dkProjectileAttacks*0.4;
		var healBoss = instance_create_depth(par_deathKnights.x+irandom_range(-8,8),par_deathKnights.y+irandom_range(-5,5),par_deathKnights.depth-10,obj_textMaker);
		healBoss.color = c_red;
		healBoss.text = healBossAmount;		
		with (par_deathKnights)
		{
			hp +=global.dkProjectileAttacks*0.4;
		}
	}
	instance_destroy();
}