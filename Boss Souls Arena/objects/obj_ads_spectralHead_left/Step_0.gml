/// @description Insert description here
// code
if (x < obj_player.x){sizeX = wispSize;}
if (x > obj_player.x){sizeX = -wispSize;}
image_xscale = sizeX;
image_yscale = sizeY;
image_alpha = 0.8;
depth = -y;
x = obj_player.x-150;
y = obj_player.y;
//hp and death