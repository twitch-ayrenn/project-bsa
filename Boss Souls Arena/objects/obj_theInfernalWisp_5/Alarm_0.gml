/// @description Insert description here
// You can write your code in this editor
doSingleAttack = true;
var shot = instance_create_depth(x,y,depth-1,obj_infernalShot);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y);
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	shot.image_xscale = size/2;
	shot.image_yscale = size/2;
	shot.damage = damage;
	shot.speed = 4;