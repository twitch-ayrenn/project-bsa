/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;
depth = -10000;
if (instance_exists(obj_cursor) || instance_exists(obj_cursor_mage) || instance_exists(obj_cursor_warrior))
{
	instance_destroy();
}