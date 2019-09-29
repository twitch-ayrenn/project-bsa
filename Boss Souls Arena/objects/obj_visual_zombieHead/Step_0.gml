/// @description Insert description here
depth = -y;
if (distance_to_point(obj_allPlayer.x,obj_allPlayer.y) > 15 && state == 0)
{
	move_towards_point(obj_allPlayer.x,obj_allPlayer.y,obj_allPlayer.actualSpeed*1.1);
}
if (distance_to_point(obj_allPlayer.x,obj_allPlayer.y) < 15)
{
	speed = 0;
}
if (state == 1)
{
	x = obj_equipment_bloodPuddle.x-2;
	y = obj_equipment_bloodPuddle.y-3;
}