/// @description Insert description here
// You can write your code in this editor
depth = -y-15;
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (destroyStacks <= 0)
{
	instance_destroy();
	with (obj_player)
	{
		itemPortalAmount += 1;
	}
}
if (canAttack == true)
{
	canAttack = false;
	var firebolt = instance_create_depth(x,y+1,depth-5,obj_portalShot);
	firebolt.direction = point_direction(x,y,mouse_x,mouse_y);
	firebolt.speed = 5;
	firebolt.image_angle = point_direction(x,y,mouse_x,mouse_y)+90;
	firebolt.image_xscale = 0.4;
	firebolt.image_yscale = 0.4;
	alarm[0] = (choose(0.7,1,1.3))*30;
}