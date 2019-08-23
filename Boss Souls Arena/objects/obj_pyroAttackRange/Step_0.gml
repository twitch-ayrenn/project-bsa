/// @description Insert description here
// You can write your code in this editor
depth = -5;
x = obj_allPlayer.x;
y = obj_allPlayer.y;
image_angle = point_direction(x,y,mouse_x,mouse_y)-45;
if (dealDamage == true && image_alpha < 1)
{
	image_alpha += 0.05;
	if (image_alpha == 1)
	{
		dealDamage = false;	
	}
}
if (dealDamage == false && image_alpha > 0.5)
{
	image_alpha -= 0.05;	
}
