/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-1;
x = obj_player.x-9;
y = obj_player.y-11;
if (global.eliseAmmo > 0 && shoot == true)
{
	shoot = false;
	global.eliseAmmo -= 1;
	
	var ashyDeathShot = instance_create_depth(x,y,depth-1,obj_item_eliseShot);
	ashyDeathShot.direction = angle;
	ashyDeathShot.speed = 5;
	ashyDeathShot.image_angle = angle+90;
	ashyDeathShot.image_xscale = 0.5;
	ashyDeathShot.image_yscale = 0.5;
	angle += 360/(global.damage*6);
	
	alarm[0] = firerate;
}