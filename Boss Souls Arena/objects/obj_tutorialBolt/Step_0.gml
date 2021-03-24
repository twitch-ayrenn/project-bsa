/// @description Insert description here
image_alpha = 0.8;
depth = -y+100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
if (place_meeting(x,y,obj_allPlayer) && global.iFrame == false)
{	
	obj_allPlayer.x = obj_start.x;
	
	instance_destroy();
}
