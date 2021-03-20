/// @description Insert description here
// You can write your code in this editor
depth = -998;
var fadeToBlackSpeed = 3;
if (gameMaster.menu == Menues.Main)
{
	if (image_alpha > 0){image_alpha -= fadeToBlackSpeed/30;}
}
if (gameMaster.menu == Menues.Settings|| gameMaster.menu == Menues.BossLoot)
{
	if (image_alpha < 0.85){image_alpha += fadeToBlackSpeed/30;}
	//image_alpha = 0;
}
if (gameMaster.menu == Menues.BossSelect)
{
	if (image_alpha > 0.86){image_alpha -= fadeToBlackSpeed/30;}
	if (image_alpha < 0.85){image_alpha += fadeToBlackSpeed/30;}
}
if (gameMaster.menu != Menues.BossSelect && gameMaster.menu != Menues.Settings && gameMaster.menu != Menues.BossLoot)
{
	if (image_alpha > 0){image_alpha -= fadeToBlackSpeed/30;}
}

if (gameMaster.menu == Menues.Death)
{
	if (image_alpha > 0){image_alpha += fadeToBlackSpeed/30;}
}
image_alpha = clamp(image_alpha,0,1);