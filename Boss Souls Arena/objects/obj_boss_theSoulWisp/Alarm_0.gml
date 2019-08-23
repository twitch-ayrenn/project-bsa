/// @description Insert description here
// You can write your code in this editor
phase1DoTripleShot = true;
phase4DoTripleShot = true;
var soulShot = instance_create_depth(x,y,1,obj_soulShot);
	soulShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
	soulShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
	soulShot.speed = 8;
	soulShot.color = phaseColor;
	soulShot.damage = damage;
	soulShot.image_xscale = 1.2;
	soulShot.image_yscale = 1.2;
	
var soulShot2 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot2.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+5;
	soulShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)+5;
	soulShot2.speed = 8;
	soulShot2.color = phaseColor;
	soulShot2.damage = damage;
	soulShot2.image_xscale = 1.2;
	soulShot2.image_yscale = 1.2;
	
var soulShot3 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot3.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-5;
	soulShot3.direction = point_direction(x,y,obj_player.x,obj_player.y)-5;
	soulShot3.speed = 8;
	soulShot3.color = phaseColor;
	soulShot3.damage = damage;
	soulShot3.image_xscale = 1.2;
	soulShot3.image_yscale = 1.2;