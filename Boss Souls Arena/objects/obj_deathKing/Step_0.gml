/// @description Insert description here
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.AgentOfGod && gameMaster.agentOfGodItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerItems[bossForThisCrowd] == true)
{
	visible = true;	
}
if (gameMaster.chosenBoss == bossForThisCrowd)
{
	visible = false;	
}
if (instance_exists(followEyeObject))
{
	if (x < followEyeObject.x)
	{
		image_xscale = size;
	}
	if (x >= followEyeObject.x)
	{
		image_xscale = -size;	
	}
}