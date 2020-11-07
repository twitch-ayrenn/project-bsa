/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.agentOfGodUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.agentOfGodUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterCampaign;}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossAgentOfGodUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossAgentOfGodUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterArenaRush;}
}