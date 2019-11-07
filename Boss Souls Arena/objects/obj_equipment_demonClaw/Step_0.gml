/// @description Insert description here
depth = -y;
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = destroyTime;
}
if (image_index <= 4)
{
	image_speed = 1;
	if (canDealDamage == true && sprite_index == spr_equipment_demonClaw)
	{
		with (par_enemy)
		{
			if(place_meeting(x,y,obj_equipment_demonClaw))
			{
				var damageDealt = global.damage*10;
				var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
				damageText.color = c_white;
				damageText.text = damageDealt;
				hp -= global.damage*10;
				
				var amountHealed = global.damage*10*global.lifeSteal;
				var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
				healText.color = c_lime;
				healText.text = amountHealed;
				with (obj_allPlayer)
				{
					hp += global.damage*10*global.lifeSteal;
				}
			}
		}
	}
	if (place_meeting(x,y,par_enemy)){canDealDamage = false;}
	
}
else{image_speed = 0;if (sprite_index == spr_equipment_demonClaw_down){instance_destroy();}}
with (obj_enemyProjectile)
{
	if (sprite_index != spr_gooGround && sprite_index != spr_beam && place_meeting(x,y,obj_equipment_demonClaw))
	{
		instance_destroy();
	}
}