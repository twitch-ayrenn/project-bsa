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
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterCampaign;}
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
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterArenaRush;}
}