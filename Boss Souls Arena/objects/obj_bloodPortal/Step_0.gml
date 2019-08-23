/// @description Insert description here
// You can write your code in this editor
depth = -y-15;
var nearestTarget = instance_nearest(x,y,par_enemy);
if (instance_exists(par_enemy))
{
	if (canAttack == true)
	{
		canAttack = false;
		var bat = instance_create_depth(x,y+5,depth-5,obj_batProjectile);
		bat.speed = 5;
		alarm[0] = (75/obj_player.maxHp)*choose(20,25,30);
	}
	
}