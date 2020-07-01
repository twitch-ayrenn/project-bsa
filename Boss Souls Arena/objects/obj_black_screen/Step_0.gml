/// @description Insert description here
// You can write your code in this editor
visible = 0;
depth = gameMaster.depth+1;
if (gameMaster.menu == Menues.Main)
{
	x = 8;
	y = 126;
	image_xscale = 0.2;
	image_yscale = -0.11875;
	visible = true;
	if (image_alpha > 0.6){image_alpha -= 1.1/30;}
}
if (gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.Credits || gameMaster.menu == Menues.Controlls)
{
	x = 8;
	y = 126;
	image_xscale = 0.2;
	image_yscale = -0.11875;
	visible = true;
	if (image_alpha < 0.9){image_alpha += 1.1/30;}
}
