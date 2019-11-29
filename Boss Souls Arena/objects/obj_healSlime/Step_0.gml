/// @description Insert description here
depth = -y;
if (instance_exists(obj_allBoss) == false){instance_destroy(obj_healSlime);}
var nearestEnemy = instance_nearest(x,y,obj_allBoss);
move_towards_point(nearestEnemy.x,nearestEnemy.y,0.6);
if (hp <= 0)
{
	instance_destroy();	
}
if (place_meeting(x,y,nearestEnemy))
{
	with (nearestEnemy)
	{
		nearestEnemy.hp += 100;
	}
	instance_destroy(obj_healSlime);
}