/// @description Insert description here
// You can write your code in this editor
shoot = true;
var shot = instance_create_depth(x,y,depth-1,obj_witchshot_green);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y);
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270;
	shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.damage = damage;
	shot.speed = 4;
	
	var shot = instance_create_depth(x,y,depth-1,obj_witchshot_green);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)+20;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270+20;
	shot.damage = damage;
	shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.speed = 4;
	
	var shot = instance_create_depth(x,y,depth-1,obj_witchshot_green);
	shot.direction = point_direction(x,y,obj_player.x,obj_player.y)-20;
	shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+270-20;
	shot.damage = damage;
		shot.image_xscale = 0.8;
	shot.image_yscale = 0.8;
	shot.speed = 4;