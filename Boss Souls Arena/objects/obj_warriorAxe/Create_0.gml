/// @description Insert description here
// You can write your code in this editor
moving = true;
stillStacks = 0;
timeBeforeAxePickUp = (1)*30;
canPickUpAxe = false;
timeFlew = 0;
backSpeed = 3;
actualBackSpeed = obj_player.actualSpeed + backSpeed;
hitEnemy = false;
size = 1;
image_xscale = size;
image_yscale = size;
state = 0;
enum AxeState
{
	Forward,
	Back,
}
state = AxeState.Forward;
if (global.soundOn == true)
{
	audio_play_sound(snd_axethrow,Prioity.Small,false);
}