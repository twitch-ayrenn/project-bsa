/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player) && obj_player.class != Class.The_Assasin)
{
	visible = true;
	depth = -y+100;
	x = obj_player.x;
	y = obj_player.y;
}
if (instance_exists(obj_player) == false)
{
	instance_destroy();	
}
