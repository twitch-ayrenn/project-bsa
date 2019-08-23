/// @description Insert description here
// You can write your code in this editor
x += (xTo - x)/1;
y += (yTo - y)/1;

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;	
}

var vm = matrix_build_lookat(x,y,-1000,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
