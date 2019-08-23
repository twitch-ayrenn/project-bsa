/// @description Insert description here
// You can write your code in this editor
depth = -y-15;
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (place_meeting(x,y,par_enemy))
{
	
	with (obj_player)
	{
		pyroPortalAmount += 1;
	}
	var nearbot = instance_nearest(x,y,obj_portal_bottom);
	instance_destroy(nearbot);	
	var nearRange = instance_nearest(x,y,obj_portalAttackRange);
	instance_destroy(nearRange);
	instance_destroy();
}
if (destroyStacks <= 0)
{
	with (obj_player)
	{
		pyroPortalAmount += 1;
	}
	var nearbot = instance_nearest(x,y,obj_portal_bottom);
	instance_destroy(nearbot);	
	var nearRange = instance_nearest(x,y,obj_portalAttackRange);
	instance_destroy(nearRange);
	instance_destroy();
}