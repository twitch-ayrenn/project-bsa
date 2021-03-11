/// @description Insert description here
depth = -y;
if (distance_to_point(pointToStandX,pointToStandY) >= 5)
{
	move_towards_point(pointToStandX,pointToStandY,2);	
	speed = 2;
}
if (distance_to_point(pointToStandX,pointToStandY) < 5)
{
	speed = 0;
}
if (instance_exists(obj_allBoss))
{
	if (obj_allBoss.x <= x){image_xscale = -1;}
	if (obj_allBoss.x > x){image_xscale = 1;}	
}
if (swapPlaces == true)
{
	swapPlaces = false;
	var rRange = 50;
	pointToStandX = clamp(global.player.x +irandom_range(-rRange,rRange),450,750);
	pointToStandY = clamp(global.player.y+ irandom_range(-rRange,rRange),500,725);
	
	alarm[0] = (7)*30;
}