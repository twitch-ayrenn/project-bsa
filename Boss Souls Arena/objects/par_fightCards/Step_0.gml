/// @description Insert description here
depth = -1000;
image_xscale = size;
image_yscale = size;
if (gameMaster.menu == Menues.BossSelect)
{
	visible = true;
	mask_index = spr_fight_bloodZombie;//dont need to change for copies
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
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.chosenClass == Character.AgentOfGod && gameMaster.agentOfGodProgress < bossOnThisCard)
{
	visible = false;
	mask_index = spr_prop_cup;
}
if (gameMaster.menu != Menues.BossSelect)
{
	visible = false;
	mask_index = spr_prop_cup;
}