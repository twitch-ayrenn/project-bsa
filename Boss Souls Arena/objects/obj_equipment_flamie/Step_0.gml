/// @description Insert description here
// You can write your code in this editor
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = (3)*30;
}
if (place_meeting(x,y,global.player) || distance_to_object(global.player) <= 10)
{
	var target = instance_nearest(x,y,par_enemy)
	var dagger = instance_create_depth(x,y,depth+1,obj_flamieBolt);
		dagger.direction = point_direction(x,y,target.x,target.y);
		dagger.speed = 5;
		dagger.image_angle = dagger.direction+90;
		dagger.image_xscale = 2.5;
		dagger.image_yscale = 2.5;
		dagger.image_alpha = 0.75;
	var indicator = instance_nearest(x,y,obj_indicator);
	instance_destroy(indicator);
	instance_destroy();
}