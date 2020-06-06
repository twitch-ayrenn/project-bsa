/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.assassinUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.assassinUnlocked == true)
	{
		outline = "unSelected";
	}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossAssassinUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossAssassinUnlocked == true)
	{
		outline = "unSelected";
	}
}