/// @description Insert description here
// You can write your code in this editor
phase1DoDoubleShot =true;
var shot = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)-13;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-13;
	shot.image_xscale = 0.75;
	shot.image_yscale = 0.75;
	shot.damage = damage;
	shot.speed = 6;
	
var shot2 = instance_create_depth(x,y,depth-1,obj_flameGateShot);
	shot2.direction = point_direction(x,y,obj_player.x,obj_player.y)+13;
	shot2.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+13;
	shot2.image_xscale = 0.75;
	shot2.image_yscale = 0.75;
	shot2.damage = damage;
	shot2.speed = 6;
	
