/// @description Insert description here
// You can write your code in this editor
if (image_index == 0){image_blend = c_aqua;}
if (image_index == 1){image_blend = c_gray;}
if (place_meeting(x,y,obj_player) && image_index == 0)
{
	image_index = 1;
	if (instance_exists(obj_boss_theWispMother))
	{
		with(obj_boss_theWispMother)
		{
			hp += 50;
		}
	}
}
