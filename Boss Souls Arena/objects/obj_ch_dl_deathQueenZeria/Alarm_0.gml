/// @description Insert description here
// You can write your code in this editor
shoot = true;
var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+1;
frostShot.image_angle = frostShot.direction+90;
frostShot.speed = 7;
frostShot.image_xscale = 1.1;
frostShot.image_yscale = frostShot.image_xscale;
with (summoining)
{
	var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
	frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+1;
	frostShot.image_angle = frostShot.direction+90;
	frostShot.speed = 7;
	frostShot.image_xscale = 0.9;
	frostShot.image_yscale = frostShot.image_xscale;
}