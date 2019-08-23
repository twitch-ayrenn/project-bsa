/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
depth = obj_player.depth+1;
image_xscale += grow;
image_yscale += grow;
if (image_xscale <= 0)
{
	grow = 0.6;	
}
if (image_xscale >= 1.1)
{
	with(obj_player){image_alpha = 1}
	instance_destroy();
}