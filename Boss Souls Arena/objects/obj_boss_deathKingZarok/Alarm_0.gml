/// @description Insert description here
// You can write your code in this editor
phase1DoubleShot = true;
var deathShot = instance_create_depth(x-17,y+4,depth-1,obj_deathShot);
deathShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+10;
deathShot.image_angle = deathShot.direction+90;
deathShot.speed = 6;
deathShot.image_xscale = 1;
deathShot.image_yscale = deathShot.image_xscale;

var deathShot2 = instance_create_depth(x-17,y+4,depth-1,obj_deathShot);
deathShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)-10;
deathShot2.image_angle = deathShot2.direction+90;
deathShot2.speed = 6;
deathShot2.image_xscale = 1;
deathShot2.image_yscale = deathShot2.image_xscale;
//right arm
var deathShot = instance_create_depth(x+17,y+4,depth-1,obj_deathShot);
deathShot.direction = point_direction(x,y,obj_player.x,obj_player.y)+10;
deathShot.image_angle = deathShot.direction+90;
deathShot.speed = 6;
deathShot.image_xscale = 1;
deathShot.image_yscale = deathShot.image_xscale;

var deathShot2 = instance_create_depth(x+17,y+4,depth-1,obj_deathShot);
deathShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)-10;
deathShot2.image_angle = deathShot2.direction+90;
deathShot2.speed = 6;
deathShot2.image_xscale = 1;
deathShot2.image_yscale = deathShot2.image_xscale;