/// @description Insert description here
// You can write your code in this editor
x = obj_allPlayer.x;
y = obj_allPlayer.y;
depth = obj_allPlayer.depth+1;

if (instance_exists(obj_bloodBeam) == false)
{
	instance_destroy();
}
