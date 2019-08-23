/// @description Insert description here
// You can write your code in this editor
depth = obj_allPlayer.depth+2;
image_alpha = 0.65;
x = obj_allPlayer.x;
y = obj_allPlayer.y;
sizeX -= 0.05;
image_xscale = sizeX;
if (sizeX <= 0){instance_destroy();}
if (dealDamage == true)
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_bloodBeam))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,obj_player);	
			var damageDealt = global.damage*4;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage;
			
			var amountHealed = global.damage*4;
			var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (obj_player)
			{
				hp += global.damage;
			}
		}
	}
	alarm[0] = damageTimer;
}