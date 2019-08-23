/// @description Insert description here
// You can write your code in this editor
shoot = true;
var angle = 0;
repeat(15)
{
	var cirkleShot = instance_create_depth(x,y,depth-1,obj_witchshot_yellow);
	cirkleShot.direction = angle;
	cirkleShot.image_angle = angle+90;
	cirkleShot.damage = damage;
	cirkleShot.image_xscale = 0.5;
	cirkleShot.image_yscale = 0.5;
	cirkleShot.speed = 4;
	angle += (360/15);
}