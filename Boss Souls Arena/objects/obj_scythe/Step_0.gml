/// @description Insert description here
// You can write your code in this editor
depth = obj_boss_theGraveKeeper.depth;
if (state == ScytheState.Still)
{
	x = obj_boss_theGraveKeeper.x-30;
	y = obj_boss_theGraveKeeper.y-10;
	image_angle = 0;
	sprite_index = spr_scythe_projectile;
}
if (state == ScytheState.Chasing)
{
	chaseStacks++;
	image_angle += 45;
	sprite_index = spr_scythe_projectile;
	move_towards_point(obj_player.x,obj_player.y,4);
	if (chaseStacks >= (3.5)*30)
	{
		state = ScytheState.Still;
		chaseStacks = 0;
	}
	if (place_meeting(x,y,obj_player))
	{
		var damageToTarget = global.gkChaseDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (obj_player)
		{
			hp -= global.gkChaseDamage;
		}
	}
}
if (state == ScytheState.Spin)
{
	image_angle += 20;
	sprite_index = spr_scythe_spin;
	if (image_angle >= 360)
	{
		state = ScytheState.Still;
	}
	if (place_meeting(x,y,obj_player))
	{
		var damageToTarget = global.gkSpinDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (obj_player)
		{
			hp -= global.gkSpinDamage;
		}
	}
	x = obj_boss_theGraveKeeper.x-30;
	y = obj_boss_theGraveKeeper.y-10;
}