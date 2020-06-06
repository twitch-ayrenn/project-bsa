/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.gravelingUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.gravelingUnlocked == true)
	{
		outline = "unSelected";
	}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossGravelingUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossGravelingUnlocked == true)
	{
		outline = "unSelected";
	}
}