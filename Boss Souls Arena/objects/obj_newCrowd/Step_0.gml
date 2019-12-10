/// @description Insert description here
// You can write your code in this editor
depth = -900-y;
if (instance_exists(followEyeObject))
{
	if (x < followEyeObject.x)
	{
		image_xscale = 1;
	}
	if (x >= followEyeObject.x)
	{
		image_xscale = -1;	
	}
}