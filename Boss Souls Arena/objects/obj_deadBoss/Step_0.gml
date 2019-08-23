/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_alpha -= 0.3333/30;
image_xscale -= 0.3/30;
image_yscale -= 0.3/30;
if (image_alpha <= 0.1 || image_xscale <= 0.2)
{
	instance_destroy();	
}