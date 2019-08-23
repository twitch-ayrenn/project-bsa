/// @description Insert description here
// You can write your code in this editor
if (shake == true)
{
	var ranX = random_range(-intensity,intensity);
	var ranY = random_range(-intensity,intensity);
	camera_set_view_pos(view_camera[0],view_x+ranX,view_y+ranY);
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
}