/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y-4;
image_xscale = 0.5;
image_yscale = 0.5;
depth = obj_player.depth+1;
if (obj_player.hasAxe == true)
{
	image_alpha = 1;
}
if (obj_player.hasAxe == false)
{
	image_alpha = 0;
}
if (rotate == false)
{
	sprite_index = spr_warriorAxe;
	size = 0.5;
	image_angle = 360;
}
if (rotate == true)
{
	size = 0.75;
	sprite_index = spr_warriorAxe_extended;
	image_angle -= 25;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_axeOnBack))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,obj_player);	
			var damageDealt = global.damage;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*2;
			
			var amountHealed = global.damage*0.75*global.bookOfHealingHealBoost;
			var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (obj_player)
			{
				hp += global.damage*2*0.75*global.bookOfHealingHealBoost;
			}
		}
	}
}
if (image_angle <= 0)
{
	rotate = false;
}