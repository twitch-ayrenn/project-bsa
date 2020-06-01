/// @description Insert description here
if (instance_exists(objectToInheritFrom))
{
	x = objectToInheritFrom.x;
	y = objectToInheritFrom.y;
	depth = objectToInheritFrom.depth-1;
	image_xscale += grow;
	image_yscale += grow;
	image_xscale = clamp(image_xscale,0,maxGrowth);
	image_yscale = clamp(image_yscale,0,maxGrowth);
	if (image_xscale <= 0 && switchOnce == true)
	{
		switchOnce = false;
		grow *= -1;
	}
	if (image_xscale >= maxGrowth)
	{
		if (objectType == "boss"){objectToInheritFrom.alpha = normalAlpha;}
		if (objectType == "player"){objectToInheritFrom.image_alpha = normalAlpha;}
		instance_destroy();
	}
}
else
{
	instance_destroy();	
}