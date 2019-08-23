/// @description Insert description here
// You can write your code in this editor
shoot = true;
var wispShot = instance_create_depth(x,y,1,obj_soulShot);
wispShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
wispShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
wispShot.speed = 4;
wispShot.image_xscale = 0.5;
wispShot.image_yscale = 0.5;
wispShot.damage = damage;
