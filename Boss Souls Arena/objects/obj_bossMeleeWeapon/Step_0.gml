/// @description Insert description here
if (instance_exists(obj_allBoss))
{
	x = obj_allBoss.x;
	y = obj_allBoss.y;
}
if (state = MeleeWeaponStates.idle)
{
	image_angle = obj_allBoss.direction-135+180;
}