/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_angle += 35;
damage = (40 + obj_player.hp*0.08)*(1 +(global.playerLevel/50));
if (destroy == true)
{
	destroy = false;
	alarm[0] = (time)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget = instance_nearest(x,y,obj_scythe_projectile_weak).damage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= instance_nearest(x,y,obj_scythe_projectile_weak).damage;
	}
	instance_destroy();
}