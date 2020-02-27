/// @description Insert description here
// You can write your code in this editor
depth = -5;
if (instance_exists(global.player))
{
	x = global.player.x;
	y = global.player.y;
	if (global.player.canUlt == true)
	{
		image_alpha = 1;	
	}
	if (global.player.canUlt == false)
	{
		//image_alpha = 0;	
	}
}
if (instance_exists(global.player) == false)
{
	instance_destroy();
}