/// @description Insert description here
// You can write your code in this editor
phase1DoTripleShot = true;
var shot = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)-20;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-20;
	shot.image_xscale = 0.5;
	shot.image_yscale = 0.5;
	shot.damage = damage;
	shot.speed = 6;
	
var shot2 = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot2.direction = point_direction(x,y,obj_player.x,obj_player.y)+20;
	shot2.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+20;
	shot2.image_xscale = 0.5;
	shot2.image_yscale = 0.5;
	shot2.damage = damage;
	shot2.speed = 6;
	
var shot3 = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot3.direction = point_direction(x,y,obj_player.x,obj_player.y);
	shot3.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	shot3.image_xscale = 0.5;
	shot3.image_yscale = 0.5;
	shot3.damage = damage;
	shot3.speed = 6;
	