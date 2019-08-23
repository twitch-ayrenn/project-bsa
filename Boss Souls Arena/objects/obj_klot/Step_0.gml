/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
image_blend = color;
image_angle -= 30;
image_alpha = 0.9;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (6)*30;
}
var target = obj_player;
if (place_meeting(x,y,target))
{
	var damageToTarget =  instance_nearest(x,y,obj_klot).damage;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (target)
	{
		hp -= instance_nearest(x,y,obj_klot).damage;
	}
	if(color == c_lime)
	{
		instance_create_depth(x,y,98,obj_gooGround);
	}
	with (obj_camera){shake_remain += 2;}
	instance_destroy();
}