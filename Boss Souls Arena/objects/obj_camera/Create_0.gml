/// @description Insert description here
//new camera
enum CameraStates
{
	preFightView,
	PlayerView,
}
state = CameraStates.preFightView;
camera = camera_create();
camSize = global.camSize;//4 // 2.5 for gifs
cameraSpeed = 50;
playerCameraSpeed = 1;

quedTutorial = false;
x = obj_allBoss.x;
y = obj_allBoss.y;

var vm = matrix_build_lookat(x,y,-10000,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(1920/camSize,1080/camSize,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;
follow = obj_allBoss;
xTo = x;
yTo = y;
//screenshake
shake_length = 30;
shake_magnitude = 6;//lägre = större shake
shake_remain = 0;//time of shake