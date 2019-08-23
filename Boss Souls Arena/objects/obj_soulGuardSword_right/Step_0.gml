/// @description Insert description here
// You can write your code in this editor
image_yscale = obj_boss_theSoulGuards.image_yscale;
image_xscale = image_yscale;
image_alpha = obj_boss_theSoulGuards.image_alpha;
if (state == SwordStates.Idle)
{
	x = obj_boss_theSoulGuards.x+45;
	y = obj_boss_theSoulGuards.y;
	sprite_index = spr_soulGuardsArms_right;
	image_angle = 0;
}
if (state == SwordStates.ChaseSpin)
{
	x = obj_boss_theSoulGuards.x;
	y = obj_boss_theSoulGuards.y;
	sprite_index = spr_swordSpinAttack;
	chaseStacks++;
	image_angle -= 20;
	if (chaseStacks >= (4)*30)
	{
		state = SwordStates.Idle;
		chaseStacks = 0;
	}
	if (place_meeting(x,y,obj_player))
	{
		var damageToTarget = global.sgChaseDamage;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		with (obj_player)
		{
			hp -= global.sgChaseDamage;
		}
	}
}


