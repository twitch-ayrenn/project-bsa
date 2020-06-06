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
	var nearestPortalBottom = instance_nearest(x,y,obj_portal_bottom);
	instance_destroy(nearestPortalBottom);
}
if (canAttack == true)
{
	canAttack = false;
	var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
	fireBolt.direction = point_direction(x,y,mouse_x,mouse_y);
	if (global.autoAim == true && instance_exists(obj_allBoss)){fireBolt.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
	fireBolt.image_angle = fireBolt.direction+90;
	fireBolt.speed = 5;
	fireBolt.image_xscale = 0.35*(1 + (gameMaster.bonusConjur/200));
	fireBolt.image_yscale = fireBolt.image_xscale;
	fireBolt.charge = 1;
	
	alarm[0] = (0.85)*30;
	
}