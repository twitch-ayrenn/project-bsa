/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_alpha = 0.9;
image_angle -= 25;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (5)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget = global.dkiProjectileDamage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= global.dkiProjectileDamage;
	}
	instance_destroy();
}
