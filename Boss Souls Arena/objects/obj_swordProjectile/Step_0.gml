/// @description Insert description here
// You can write your code in this editor
stacks++;
realStacks++;
if (stacks >= 30)
{
	instance_destroy();
}
if (realStacks >= (10)*30)
{
	instance_destroy();
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with (enemy)
	{	
		hp -= global.damage;
	}
	with (obj_player)
	{
		hp += 2;
	}
	instance_destroy();
}
