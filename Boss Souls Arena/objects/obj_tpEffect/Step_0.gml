/// @description Insert description here
// You can write your code in this editor
x = obj_allPlayer.x;
y = obj_allPlayer.y;
depth = obj_allPlayer.depth+1;
image_xscale += grow;
image_yscale += grow;
if (image_xscale <= 0)
{
	grow = 0.6;	
}
if (image_xscale >= 1.1)
{
	with(obj_allPlayer){image_alpha = 0.85}
	instance_destroy();
}