/// @description Insert description here
depth = -y;
image_alpha = 0.75;
if (distance_to_point(pointToStandX,pointToStandY) >= 5)
{
	move_towards_point(pointToStandX,pointToStandY,2);	
	speed = 2;
}
if (distance_to_point(pointToStandX,pointToStandY) < 5)
{
	speed = 0;
}
if (swapPlaces == true)
{
	swapPlaces = false;
	
	pointToStandX = global.arenaMiddleX +irandom_range(-150,150);
	pointToStandY = global.arenaMiddleY + irandom_range(-150,150);
	
	alarm[0] = (7)*30;
}
if (destroy == true && hp > 0)
{
	destroy = false;
	
	hp -= 1;
	
	alarm[1] = (1)*30;
}
if (hp <= 0)
{
	instance_destroy();
	instance_destroy(circleId);
}
if (hp >= maxHp){hp = maxHp;}