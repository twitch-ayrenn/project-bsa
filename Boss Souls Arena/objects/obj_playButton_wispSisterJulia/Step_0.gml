/// @description Insert description here
// You can write your code in this editor
depth = -1000;
image_xscale = size;
image_yscale = size;
if (gameMaster.menu == Menues.BossSelect)
{
	visible = true;
	mask_index = spr_fightButton;//dont need to change for copies
}
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.Shopkeeper && gameMaster.shopkeeperProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.TheRedWarrior && gameMaster.theRedWarriorProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerProgress < bossOnThisCard-1)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.RainbowSlime && gameMaster.rainbowSlimeProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.menu != Menues.BossSelect)
{
	visible = false;
	mask_index = spr_prop_cup;
}