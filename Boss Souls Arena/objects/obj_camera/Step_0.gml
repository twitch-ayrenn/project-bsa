/// @description Insert description here
if (state == CameraStates.preFightView)
{
	cameraSpeed = 40;
	if (distance_to_object(global.player) < 20)
	{
		state = CameraStates.PlayerView;
		if (instance_exists(obj_allBoss)){obj_allBoss.state = BossStates.Fighting;}
		global.player.state = States.Idle;
	}
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


if (global.screenShake == true)
{
	x += random_range(-clamp(shake_remain,0,8),clamp(shake_remain,0,8));
	y += random_range(-clamp(shake_remain,0,8),clamp(shake_remain,0,8));

}
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
shake_remain = clamp(shake_remain,0,8);

var vm = matrix_build_lookat(x,y,-10000,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);