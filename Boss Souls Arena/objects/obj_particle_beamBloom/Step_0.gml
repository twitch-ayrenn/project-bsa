/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objectToInheritFrom))
{
	depth = objectToInheritFrom.depth-1;
	x = objectToInheritFrom.x;
	y = objectToInheritFrom.y;
}
if (instance_exists(objectToInheritFrom) == false)
{
	instance_destroy();
}