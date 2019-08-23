/// @description Insert description here
// You can write your code in this editor
visible = 0;
depth = gameMaster.depth+1;
if (gameMaster.menu == Menues.Main)
{
	x = 8;
	y = 126;
	image_xscale = 0.1955555;
	image_yscale = -0.11875;
	visible = true;
	image_alpha = 0.55;
}
if (gameMaster.menu == Menues.PlayerSelect)
{
	x = 8;
	y = 126;
	image_xscale = 0.18;
	image_yscale = -0.11875;
	visible = true;
	image_alpha = 0.65;
}
