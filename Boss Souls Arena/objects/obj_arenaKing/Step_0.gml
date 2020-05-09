	/// @description Insert description here
// You can write your code in this editor
depth = -900-y;
if (instance_exists(followEyeObject))
{
	if (x < followEyeObject.x)
	{
		image_xscale = size;
	}
	if (x >= followEyeObject.x)
	{
		image_xscale = -size;	
	}
}