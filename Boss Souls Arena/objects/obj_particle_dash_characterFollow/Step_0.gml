/// @description Insert description here
image_alpha -= fadeSpeed;
if (image_alpha <= 0){instance_destroy();}
if (objectToInheritFrom != noone && instance_exists(objectToInheritFrom))
{
	depth = objectToInheritFrom.depth+10;
}