/// @description Fase2 combo reset
fase2DoCombo = true;
var triShot = instance_create_depth(x,y,1,obj_wispShot);
triShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-35;
triShot.direction = point_direction(x,y,obj_player.x,obj_player.y)-35;
triShot.speed = 4;
triShot.color = c_red;
triShot.image_xscale = 1;
triShot.image_yscale = 1;
triShot.damage = fase2Damage/2;
			
var triShot2 = instance_create_depth(x,y,1,obj_wispShot);
triShot2.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90-15;
triShot2.direction = point_direction(x,y,obj_player.x,obj_player.y)-15;
triShot2.speed = 4;
triShot2.color = c_red;
triShot2.image_xscale = 1;
triShot2.image_yscale = 1;
triShot2.damage = fase2Damage/2;
			
var triShot3 = instance_create_depth(x,y,1,obj_wispShot);
triShot3.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+15;
triShot3.direction = point_direction(x,y,obj_player.x,obj_player.y)+15;
triShot3.speed = 4;
triShot3.color = c_red;
triShot3.image_xscale = 1;
triShot3.image_yscale = 1;
triShot3.damage = fase2Damage/2;
			
var triShot4 = instance_create_depth(x,y,1,obj_wispShot);
triShot4.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90+35;
triShot4.direction = point_direction(x,y,obj_player.x,obj_player.y)+35;
triShot4.speed = 4;
triShot4.color = c_red;
triShot4.image_xscale = 1;
triShot4.image_yscale = 1;
triShot4.damage = fase2Damage/2;
			