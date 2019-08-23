/// @description Insert description here
// You can write your code in this editor
var nearestEnemie = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,nearestEnemie))
{
	var damageDealt = global.damage*4;
	var damageText = instance_create_depth(nearestEnemie.x+irandom_range(-8,8),nearestEnemie.y+irandom_range(-5,5),nearestEnemie.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (nearestEnemie)
	{
		y += 15;
		hp -= global.damage*4;
	}
}
destroyStacks++;
if (destroyStacks >= (0.4)*30)
{
	instance_destroy();
}
