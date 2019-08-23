/// @description Insert description here
// You can write your code in this editor
phase2DoCirkleShot = true;
phase4DoCikrleShot = true;
var angle = 0;
repeat(18)
{
	var soulShot = instance_create_depth(x,y,1,obj_soulShot);
	soulShot.image_angle = angle + 90;
	soulShot.direction = angle;
	soulShot.speed = 6;
	soulShot.color = phaseColor;
	soulShot.damage = damage;
	soulShot.image_xscale = 1;
	soulShot.image_yscale = 1;
	angle += 360/18;
}