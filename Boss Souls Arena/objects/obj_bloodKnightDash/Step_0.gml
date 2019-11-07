/// @description Insert description here
// You can write your code in this editor
depth = global.player.depth-1;
if (image_xscale > 0)
{
	x = global.player.x+10;
	y = global.player.y-12;
}
if (image_xscale < 0)
{
	x = global.player.x-10;
	y = global.player.y-11;
}
var sizeX = size;
if (global.player.image_xscale > 0){sizeX = size;}
if (global.player.image_xscale < 0){sizeX = -size;}
image_xscale = sizeX;
image_yscale = size;
image_alpha = 1;
if (destroy == true)
{
	destroy = false;
	
	alarm[1] = (2)*30;
}
if (dealDamage == true && place_meeting(x,y,par_enemy))
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_bloodKnightDash))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,global.player);	
			var damageDealt = global.damage*5;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*5;
			
			var amountHealed = global.damage*5*global.lifeSteal;
			var healText = instance_create_depth(player.x+irandom_range(-8,8),player.y+irandom_range(-5,5),player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (player)
			{
				hp += global.damage*5*global.lifeSteal;
			}
		}
	}
	alarm[0] = damageTimer;
}