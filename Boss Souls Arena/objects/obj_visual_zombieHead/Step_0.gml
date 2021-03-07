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
if (state == 0)
{
	sprite_index = spr_equipment_zombieHead_idle;
	image_alpha = 1;
}
if (state == 1)
{
	image_alpha = 0;
	sprite_index = spr_equipment_zombieHead_idle;
}