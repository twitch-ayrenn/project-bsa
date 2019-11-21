/// @description Insert description here
// You can write your code in this editor
depth = -998;
if (gameMaster.menu == Menues.Main)
{
	if (image_alpha > 0){image_alpha -= 1.3/30;}
}
if (gameMaster.menu == Menues.BossSelect || gameMaster.menu == Menues.Settings|| gameMaster.menu == Menues.BossLoot)
{
	if (image_alpha < 0.7){image_alpha += 1.1/30;}
}
if (gameMaster.menu != Menues.BossSelect && gameMaster.menu != Menues.Settings && gameMaster.menu != Menues.BossLoot)
{
	if (image_alpha > 0){image_alpha -= 1.3/30;}
}

if (gameMaster.menu == Menues.Death)
{
	if (image_alpha > 0){image_alpha += 1.3/30;}
}
image_alpha = clamp(image_alpha,0,1);