/// @description Insert description here
// You can write your code in this editor
doCirkleAttack = true;
var angle = 0;
repeat(int64(10*size))
{
	var cirkleShot = instance_create_depth(x,y,depth-1,obj_infernalShot);
		cirkleShot.direction = angle;
		cirkleShot.image_angle = angle+90;
		cirkleShot.damage = damage;
		cirkleShot.image_xscale = size/3;
		cirkleShot.image_yscale = size/3;
		cirkleShot.speed = 4;
	angle += (360/(int64(10*size)));
}