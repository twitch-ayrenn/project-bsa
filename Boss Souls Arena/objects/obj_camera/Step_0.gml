/// @description Insert description here
if (state == CameraStates.preFightView)
{
	follow = obj_allBoss;
	cameraSpeed = 40;
}
if (state == CameraStates.PlayerView)
{
	follow = global.player;
	if(cameraSpeed > 1){cameraSpeed -= clamp(2/30,playerCameraSpeed,50);}
}
if (distance_to_object(global.player) < 1 && global.tutorial == true && quedTutorial == false)
{
 	quedTutorial = true;
	gameMaster.quePlayerTutorial = true;
}
//
x += (xTo - x)/cameraSpeed;
y += (yTo - y)/cameraSpeed;

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;	
}


if (global.screenShake == true)
{
	x += random_range(-clamp(shake_remain,0,10),clamp(shake_remain,0,10));
	y += random_range(-clamp(shake_remain,0,10),clamp(shake_remain,0,10));

}
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
shake_remain = clamp(shake_remain,0,10000);

var vm = matrix_build_lookat(x,y,-10000,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);