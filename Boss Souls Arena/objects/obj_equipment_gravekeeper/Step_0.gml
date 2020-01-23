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
	
	pointToStandX = global.arenaMiddleX +irandom_range(-150,150);
	pointToStandY = global.arenaMiddleY + irandom_range(-150,150);
	
	alarm[0] = (7)*30;
}