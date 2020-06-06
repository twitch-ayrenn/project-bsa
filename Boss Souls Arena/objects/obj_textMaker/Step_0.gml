/// @description Insert description here
// You can write your code in this editor
depth = -y-100;
if (color == c_white)
{
	yRise -= 0.5;
	if (yRise <= -6)
	{
		instance_destroy();	
	}
}
if (color == c_lime)
{
	yRise -= 0.5;
	if (yRise <= -3)
	{
		instance_destroy();	
	}
}
if (color == c_maroon)
{
	yRise -= 0.25;
	if (yRise <= -9)
	{
		instance_destroy();	
	}
}
if (color == c_fuchsia)
{
	yRise -= 0.125;
	if (yRise <= -9)
	{
		instance_destroy();	
	}
}
if (color == c_red)
{
	yRise -= 0.25;
	if (yRise <= -6)
	{
		instance_destroy();	
	}
}