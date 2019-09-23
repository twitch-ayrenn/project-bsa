/// @description Insert description here
depth = -999;
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinItems[bossForThisItem] == false){visible = true;mask_index = spr_loot_size;}
if (gameMaster.menu != Menues.BossLoot){visible = false;mask_index = spr_noMask;}
if (reset == true)
{
	reset = false;
	x = xstart;
	y = ystart;
	thisItemSelected = false;
}