/// @description Insert description here
var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
fireBolt.direction = point_direction(x,y,mouse_x,mouse_y);
if (global.autoAim == true && instance_exists(obj_allBoss)){fireBolt.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
fireBolt.image_angle = fireBolt.direction+90;
fireBolt.speed = 6;
fireBolt.image_xscale = 0.65*(1 + (gameMaster.bonusConjur/200));
fireBolt.image_yscale = fireBolt.image_xscale;
fireBolt.charge = 2;
canAttack = true;