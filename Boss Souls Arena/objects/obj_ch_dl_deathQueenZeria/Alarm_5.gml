/// @description Insert description here
// You can write your code in this editor
cirkleShot = true;
var angle = 0;
repeat(16)
{
	var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
	frostShot.direction = angle;
	frostShot.image_angle = frostShot.direction+90;
	frostShot.speed = 5;
	frostShot.image_xscale = 1.2;
	frostShot.image_yscale = frostShot.image_xscale;
	angle += 360/16
}
with (summoining)
{
	var angle = 0;
	repeat(12)
	{
		var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
		frostShot.direction = angle;
		frostShot.image_angle = frostShot.direction+90;
		frostShot.speed = 5;
		frostShot.image_xscale = 1.2;
		frostShot.image_yscale = frostShot.image_xscale;
		angle += 360/12
	}
}