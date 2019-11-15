/// @description Insert description here
depth = -y;
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
		nearestEnemy.hp += 50;
	}
	instance_destroy();
}