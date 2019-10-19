/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (destroyStacks <= 0)
{
	instance_destroy();
}
if (canAttack == true)
{
	canAttack = false;
	var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
	fireBolt.direction = point_direction(x,y,mouse_x,mouse_y);
	fireBolt.image_angle = fireBolt.direction+90;
	fireBolt.speed = 5;
	fireBolt.image_xscale = 1;
	fireBolt.image_yscale = fireBolt.image_xscale;
	
	alarm[0] = (1)*30;
	
}