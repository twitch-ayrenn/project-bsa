/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player) == false || instance_exists(obj_player_guardianWisp)){instance_destroy();}
if (instance_exists(par_enemy))
{
	var nearestEnemy = instance_nearest(x,y,par_enemy);
	if (x < nearestEnemy.x){sizeX = -wispSize;}
	if (x > nearestEnemy.x){sizeX = wispSize;}
}
image_xscale = sizeX;
image_yscale = sizeY;
image_alpha = 0.7;
depth = -y;
if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 30 && instance_exists(obj_player))
{
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,4);
}
if (shoot == true && instance_exists(par_enemy))
{
	shoot = false;
	var wispbolt = instance_create_depth(x,y+1,depth-5,obj_item_wispShot);
	wispbolt.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y);
	wispbolt.speed = 5;
	wispbolt.image_angle = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)+90;
	wispbolt.image_xscale = 0.35;
	wispbolt.image_yscale = 0.35;
	alarm[0] = (choose(0.7,1,1.3))*30;
}
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (destroyStacks <= 0 && instance_exists(obj_player))
{
	with (obj_player)
	{
		itemWispAmount += 1;
	}
	instance_destroy();
}