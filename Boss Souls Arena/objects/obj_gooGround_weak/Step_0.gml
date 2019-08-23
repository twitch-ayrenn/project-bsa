/// @description Insert description here
// You can write your code in this editor
depth = 97;
size -= 0.01;
image_xscale = size;
image_yscale = image_xscale;
if (size <= 0.001)
{
	instance_destroy();	
}
if (place_meeting(x,y,obj_player))
{
	var damageToTarget = obj_player.hp*0.3/30;
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with (obj_player)
	{
		hp -= hp*0.3/30;
	}
}