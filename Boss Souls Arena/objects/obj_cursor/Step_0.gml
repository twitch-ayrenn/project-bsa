/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;
depth = -y-10000;
if (obj_player.canAttack == true)
{
	image_index = 0;
}
if (obj_player.canAttack == false)
{
	image_index = 1;
}