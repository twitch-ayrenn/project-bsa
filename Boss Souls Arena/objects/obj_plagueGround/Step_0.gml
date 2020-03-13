/// @description Insert description here
// You can write your code in this editor
depth = -6;
image_alpha = global.plagueVisualAlpha;
image_xscale = 0.75;
image_yscale = image_xscale;
x = global.player.x;
y = global.player.y;
if (dealDamage == true)
{
	dealDamage = false;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_plagueGround))
		{
			var damageDealt = global.damage*2;
			var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*2;
			
			var amountHealed = global.damage*global.lifeSteal*2;
			var healText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal*2;
			}
		}
	}
	alarm[0] = (1)*30;
}
if (heal == true)
{
	heal = false;
	with(par_plagueSummoning)
	{
		if (place_meeting(x,y,obj_plagueGround))
		{
			var amountHealed = 1;
			var healText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed/10;
			hp += amountHealed;
		}
	}
	alarm[1] = (1)*30;
}