/// @description Insert description here
// You can write your code in this editor
phase3CirkleShot = true;
phase4CirkleShot = true;
var angle = 225;
with (obj_camera){shake_remain += 1;}
repeat(18)
{
	var deathShot = instance_create_depth(x-24,y+4,depth-1,obj_deathShot);
	deathShot.direction = angle;
	deathShot.image_angle = deathShot.direction+90;
	deathShot.speed = 6;
	deathShot.image_xscale = 0.9;
	deathShot.image_yscale = deathShot.image_xscale;	
	angle += 360/30;
}
var angle2 = 45;
repeat(18)
{
	var deathShot2= instance_create_depth(x+24,y+4,depth-1,obj_deathShot);
	deathShot2.direction = angle2;
	deathShot2.image_angle = deathShot2.direction+90;
	deathShot2.speed = 6;
	deathShot2.image_xscale = 0.9;
	deathShot2.image_yscale = deathShot2.image_xscale;	
	angle2 += 360/30;
}