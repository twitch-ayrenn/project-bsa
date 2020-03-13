/// @description Insert description here
depth = -y;
if (startUpVars == true)
{
	startUpVars = false;
	sizeX = image_xscale;
	sizeY = image_yscale;
}
if (destroy == true && hp > 0)
{
	destroy = false;
	
	hp -= 1;
	
	alarm[1] = (1)*30;
}
if (hp <= 0){instance_destroy();}
//
if (instance_exists(obj_allBoss) == true)
{
	if (obj_allBoss.x >= x){image_xscale = sizeX;}
	if (obj_allBoss.x < x){image_xscale = -sizeX;}
}
//
if (shoot == true)
{
	shoot = false;
	
	var separation = 35;
	repeat(int64(1*global.player.conjurationPower))
	{
		var doodlings = instance_create_depth(x+irandom_range(-separation,separation),y+irandom_range(-separation,separation),depth+1,obj_plaguelings);
		doodlings.speed = 3;
		doodlings.direction = point_direction(x,y,mouse_x,mouse_y);
		doodlings.destroyTime = 10*30;
	}
	
	alarm[0] = (0.5)*30;
}