/// @description Insert description here
// You can write your code in this editor
canShoot = true;
var shot = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y);
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	shot.image_xscale = 1;
	shot.image_yscale = 1;
	shot.damage = damage;
	shot.speed = 5;