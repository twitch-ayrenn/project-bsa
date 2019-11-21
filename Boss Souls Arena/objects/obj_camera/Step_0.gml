/// @description Insert description here
if (state == CameraStates.preFightView)
{
	follow = obj_allBoss;
	cameraSpeed = 50;
}
if (state == CameraStates.PlayerView)
{
	follow = global.player;
	if(cameraSpeed > 1){cameraSpeed -= clamp(2/30,playerCameraSpeed,50);}
}
//
x += (xTo - x)/cameraSpeed;
y += (yTo - y)/cameraSpeed;

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;	
}

var vm = matrix_build_lookat(x,y,-10000,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);


x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
