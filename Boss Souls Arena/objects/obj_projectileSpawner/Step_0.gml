/// @description Insert description here
// You can write your code in this editor
if (shoot)
{
	shoot = false;	
	
	var bolt = instance_create_depth(x,y-5,depth-1,obj_tutorialBolt);
	bolt.direction = 270;
	bolt.speed = 4;
	bolt.image_angle = bolt.direction+90;
	bolt.image_xscale = 0.65;
	bolt.image_yscale = bolt.image_xscale;
	
	alarm[0] = 10;
}