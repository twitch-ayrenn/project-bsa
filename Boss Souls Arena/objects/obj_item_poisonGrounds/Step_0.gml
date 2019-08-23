/// @description Insert description here
// You can write your code in this editor
depth = 98;
image_alpha = 0.5;
x = obj_player.x;
y = obj_player.y;
if (dealDamage == true)
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_item_poisonGrounds))
		{
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,obj_player);	
			var damageDealt = global.damage*2;
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*2;
			
			var amountHealed = global.damage*2*0.2;
			var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (obj_player)
			{
				hp += global.damage*2*0.2;
			}
		}
	}
	alarm[0] = damageTimer;
}