/// @description fase2 bigShot reset
fase2DoBigShot = true;
with (obj_camera){shake_remain += 2;}
var bigShot = instance_create_depth(x,y,1,obj_wispShot);
bigShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
bigShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
bigShot.speed = 6;
bigShot.color = c_maroon;
bigShot.image_xscale = 1.4;
bigShot.image_yscale = 1.4;
bigShot.damage = fase2Damage*2;