/// @description Insert description here
// You can write your code in this editor
depth = -y-10000;
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
	if (yRise <= -6)
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
if (color == c_yellow)
{
	yRise -= 0.1;
	if (yRise <= -9)
	{
		instance_destroy();	
	}
}
if (color == c_gray)
{
	if (instance_exists(par_enemy))
	{
		var nearEnemey =  instance_nearest(x,y,par_enemy);
		x = nearEnemey.x-5;
		y = nearEnemey.y-35;
	}
	yRise -= 0.075;
	if (yRise <= -9)
	{
		instance_destroy();	
	}
}
if (color == global.playerTextColor)
{
	
	yRise -= 0.075;
	if (yRise <= -9)
	{
		instance_destroy();	
	}
}