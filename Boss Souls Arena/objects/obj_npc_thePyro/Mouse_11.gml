/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.pyromancerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.pyromancerUnlocked == true)
	{
		outline = "unSelected";
	}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossPyromancerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossPyromancerUnlocked == true)
	{
		outline = "unSelected";
	}
}