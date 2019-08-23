/// @description Insert description here
// You can write your code in this editor
image_yscale = obj_boss_theSoulGuards.image_yscale;
image_xscale = image_yscale;
image_alpha = obj_boss_theSoulGuards.image_alpha;
if (state == SwordStates.Idle)
{
	x = obj_boss_theSoulGuards.x-45;
	y = obj_boss_theSoulGuards.y;
	visible = true;
}
if (state == SwordStates.ChaseSpin)
{
	x = obj_boss_theSoulGuards.x;
	y = obj_boss_theSoulGuards.y;
	visible = false;
}


