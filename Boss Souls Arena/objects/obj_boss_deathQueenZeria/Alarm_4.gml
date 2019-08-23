/// @description Insert description here
// You can write your code in this editor
oneShot = true;
with (obj_camera){shake_remain += 2;}
var frostShot = instance_create_depth(x,y,depth-1,obj_frostOneShot);
frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+1;
frostShot.image_angle = frostShot.direction+90;
frostShot.speed = 5.5;
frostShot.image_xscale = 1.6;
frostShot.image_yscale = frostShot.image_xscale;
with (summoining)
{
	with (obj_camera){shake_remain += 1;}
	var frostShot = instance_create_depth(x,y,depth-1,obj_frostOneShot);
	frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+1;
	frostShot.image_angle = frostShot.direction+90;
	frostShot.speed = 5.5;
	frostShot.image_xscale = 1.4;
	frostShot.image_yscale = frostShot.image_xscale;
}