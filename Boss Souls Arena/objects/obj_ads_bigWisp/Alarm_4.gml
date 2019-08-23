/// @description Fase3 Cirkleshot reset
fase3DoCirkleShot = true;
var wispShot = instance_create_depth(x,y,1,obj_wispShot);
wispShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
wispShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
wispShot.speed = 3;
wispShot.color = c_purple;
wispShot.image_xscale = 0.8;
wispShot.image_yscale = 0.8;
wispShot.damage = fase3Damage*2;
		
var angle = 0;
repeat(fase3CirkelShotAmount)
{
	var cirkleShot = instance_create_depth(x,y,1,obj_wispShot);
	cirkleShot.image_angle = angle+90;
	cirkleShot.direction = angle;
	cirkleShot.speed = 3;
	cirkleShot.color = c_purple;
	cirkleShot.image_xscale = 0.7;
	cirkleShot.image_yscale = 0.7;
	cirkleShot.damage = fase3Damage/2;
	angle += 360/fase3CirkelShotAmount;
}