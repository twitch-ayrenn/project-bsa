/// @description Insert description here
depth = -1000;
image_xscale = size;
image_yscale = size;
if (gameMaster.menu == Menues.BossSelect)
{
	visible = true;
	mask_index = spr_fight_bloodZombie;//dont need to change for copies
}
if (gameMaster.menu != Menues.BossSelect)
{
	visible = false;
	mask_index = spr_prop_cup;
}