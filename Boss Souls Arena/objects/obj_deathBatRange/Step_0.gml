/// @description Insert description here
// You can write your code in this editor
depth = -5;
if (instance_exists(objectToFollow))
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}
if (instance_exists(objectToFollow) == false)
{
	instance_destroy();
}