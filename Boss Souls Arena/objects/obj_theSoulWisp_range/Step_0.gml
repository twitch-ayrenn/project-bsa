/// @description Insert description here
// You can write your code in this editor
depth = -y-1000;
x = obj_theSoulWispStatue.x;
y = obj_theSoulWispStatue.y+240;
size = 0.9;
image_xscale = size;
image_yscale = size;
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		hp -= ((1 + hp*0.15)/30);
		var damageToTarget = ((1 + hp*0.15)/30);
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}