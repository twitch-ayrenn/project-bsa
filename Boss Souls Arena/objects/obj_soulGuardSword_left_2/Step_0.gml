/// @description Insert description here
// You can write your code in this editor
image_xscale = obj_theSoulGuards_2.image_xscale;
image_yscale = obj_theSoulGuards_2.image_yscale;
image_alpha = obj_theSoulGuards_2.image_alpha;
if (state == SwordStates.Idle)
{
	x = obj_theSoulGuards_2.x-45;
	y = obj_theSoulGuards_2.y;
	visible = true;
}
if (state == SwordStates.ChaseSpin)
{
	x = obj_theSoulGuards_2.x;
	y = obj_theSoulGuards_2.y;
	visible = false;
}


