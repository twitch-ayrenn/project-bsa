/// @description Insert description here
depth = -5;
if (instance_exists(objectToFollow))
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}
with (global.player)
{
	if (place_meeting(x,y,obj_gravekeeperRange))
	{
		gravekeeperSpeed = 1.2;	
	}
	if !(place_meeting(x,y,obj_gravekeeperRange))
	{
		gravekeeperSpeed = 1;
	}
}
if (place_meeting(x,y,global.player))
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}