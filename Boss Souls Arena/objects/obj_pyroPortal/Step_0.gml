/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (destroyStacks <= 0)
{
	instance_destroy();
	var nearestPortalBottom = instance_nearest(x,y,obj_portal_bottom);
	instance_destroy(nearestPortalBottom);
}
if (canAttack == true)
{
	canAttack = false;
	
	alarm[0] = (0.9)*30;//1.65
}