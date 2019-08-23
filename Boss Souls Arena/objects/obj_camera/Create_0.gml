/// @description Insert description here
// You can write your code in this editor
state = 0;
//new camera
camera = camera_create();
enum Follow
{
	Player,
	WispMother,
	TheBloodPrinceFase2
	
}
camLength = 1920/4;
camHeight = 1080/4;
var vm = matrix_build_lookat(x,y,-1000,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(camLength,camHeight,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;
follow = obj_allPlayer;
xTo = x;
yTo = y;
//screenshake
extraX = 0;
extraY = 0;
view_w_half = camera_get_view_width(view_camera[0]) * 0.5;
view_h_half = camera_get_view_width(view_camera[0]) * 0.5;
shake_length = game_get_speed(gamespeed_fps);
shake_magnitude = 40;//lägre = större shake
shake_remain = 0;//time of shake
buff = 32;
