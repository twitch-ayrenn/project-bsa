/// @description Insert description here
// You can write your code in this editor
phase1DoHexaShot = true;
phase4DoHexaShot = true;
var soulShot = instance_create_depth(x,y,1,obj_soulShot);
	soulShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+10;
	soulShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+10;
	soulShot.speed = 6;
	soulShot.color = phaseColor;
	soulShot.damage = damage;
	soulShot.image_xscale = 0.8;
	soulShot.image_yscale = 0.8;
	
var soulShot2 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot2.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+5;
	soulShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)+5;
	soulShot2.speed = 6;
	soulShot2.color = phaseColor;
	soulShot2.damage = damage;
	soulShot2.image_xscale = 0.8;
	soulShot2.image_yscale = 0.8;
	
var soulShot3 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot3.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-5;
	soulShot3.direction = point_direction(x,y,obj_player.x,obj_player.y)-5;
	soulShot3.speed = 6;
	soulShot3.color = phaseColor;
	soulShot3.damage = damage;
	soulShot3.image_xscale = 0.8;
	soulShot3.image_yscale = 0.8;
	
var soulShot4 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot4.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-10;
	soulShot4.direction = point_direction(x,y,obj_player.x,obj_player.y)-10;
	soulShot4.speed = 6;
	soulShot4.color = phaseColor;
	soulShot4.damage = damage;
	soulShot4.image_xscale = 0.8;
	soulShot4.image_yscale = 0.8;
	
var soulShot5 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot5.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-15;
	soulShot5.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
	soulShot5.speed = 6;
	soulShot5.color = phaseColor;
	soulShot5.damage = damage;
	soulShot5.image_xscale = 0.8;
	soulShot5.image_yscale = 0.8;
	
var soulShot6 = instance_create_depth(x,y,1,obj_soulShot);
	soulShot6.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+15;
	soulShot6.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
	soulShot6.speed = 6;
	soulShot6.color = phaseColor;
	soulShot6.damage = damage;
	soulShot6.image_xscale = 0.8;
	soulShot6.image_yscale = 0.8;
	