/// @description Insert description here
// You can write your code in this editor
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = (3)*30;
}
if (place_meeting(x,y,global.player))
{
	var target = instance_nearest(x,y,par_enemy)
	var dagger = instance_create_depth(x,y,depth+1,obj_flamieBolt);
		dagger.direction = point_direction(x,y,target.x,target.y);
		dagger.speed = 6;
		dagger.image_angle = dagger.direction+90;
		dagger.image_xscale = 2.25;
		dagger.image_yscale = 2.25;
	instance_destroy();
}