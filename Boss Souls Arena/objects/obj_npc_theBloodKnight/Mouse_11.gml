/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.bloodKnightUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bloodKnightUnlocked == true)
	{
		outline = "unSelected";
	}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossBloodKnightUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossBloodKnightUnlocked == true)
	{
		outline = "unSelected";
	}
}