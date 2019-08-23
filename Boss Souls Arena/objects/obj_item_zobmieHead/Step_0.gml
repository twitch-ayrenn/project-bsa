/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-2;
x = obj_player.x-12;
y = obj_player.y+7;
if (canAttack == true)
{
	canAttack = false;
	var firebolt = instance_create_depth(x,y,depth-5,obj_item_bloodMaskShot);
	firebolt.direction = point_direction(x,y,mouse_x,mouse_y);
	firebolt.speed = 5;
	firebolt.image_blend = c_maroon; 
	firebolt.image_xscale = 0.5;
	firebolt.image_yscale = 0.5;
}