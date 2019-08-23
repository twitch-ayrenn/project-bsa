/// @description Insert description here
// You can write your code in this editor
depth = -1000;
image_xscale = size;
image_yscale = size;
if (gameMaster.menu == Menues.BossSelect)
{
	visible = true;
	mask_index = spr_fightButton;//dont need to change
}
if (gameMaster.menu != Menues.BossSelect)
{
	visible = false;
	mask_index = spr_prop_cup;
}