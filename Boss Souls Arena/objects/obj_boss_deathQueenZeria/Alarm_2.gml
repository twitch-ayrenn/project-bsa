/// @description Insert description here
// You can write your code in this editor
trippleShoot = true;
var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
frostShot.image_angle = frostShot.direction+90;
frostShot.speed = 6;
frostShot.image_xscale = 0.8;
frostShot.image_yscale = frostShot.image_xscale;

var frostShot2 = instance_create_depth(x,y,depth-1,obj_frostShot);
frostShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)-1;
frostShot2.image_angle = frostShot2.direction+90;
frostShot2.speed = 6;
frostShot2.image_xscale = 0.8;
frostShot2.image_yscale = frostShot2.image_xscale;

var frostShot3 = instance_create_depth(x,y,depth-1,obj_frostShot);
frostShot3.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
frostShot3.image_angle = frostShot3.direction+90;
frostShot3.speed = 6;
frostShot3.image_xscale = 0.8;
frostShot3.image_yscale = frostShot3.image_xscale;
with (summoining)
{
	var frostShot = instance_create_depth(x,y,depth-1,obj_frostShot);
	frostShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
	frostShot.image_angle = frostShot.direction+90;
	frostShot.speed = 6;
	frostShot.image_xscale = 0.6;
	frostShot.image_yscale = frostShot.image_xscale;

	var frostShot2 = instance_create_depth(x,y,depth-1,obj_frostShot);
	frostShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)-1;
	frostShot2.image_angle = frostShot2.direction+90;
	frostShot2.speed = 6;
	frostShot2.image_xscale = 0.6;
	frostShot2.image_yscale = frostShot2.image_xscale;

	var frostShot3 = instance_create_depth(x,y,depth-1,obj_frostShot);
	frostShot3.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
	frostShot3.image_angle = frostShot3.direction+90;
	frostShot3.speed = 6;
	frostShot3.image_xscale = 0.6;
	frostShot3.image_yscale = frostShot3.image_xscale;
	
}