/// @description Insert description here
// You can write your code in this editor
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = (3)*30;
}
if (distance_to_object(global.player) <= 15 && instance_exists(par_enemy))
{
	var target = instance_nearest(x,y,par_enemy)
	var dagger = instance_create_depth(x,y,depth+1,obj_flamieBolt);
		dagger.direction = point_direction(x,y,target.x,target.y);
		dagger.speed = 5;
		dagger.image_angle = dagger.direction+90;
		dagger.image_xscale = 0.75;
		dagger.image_yscale = 0.75;
	var indicator = instance_nearest(x,y,obj_indicator);
	instance_destroy(indicator);
	instance_destroy();
}