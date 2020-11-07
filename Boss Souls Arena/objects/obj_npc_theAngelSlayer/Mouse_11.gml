/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.angelSlayerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.angelSlayerUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterCampaign;}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossAngelSlayerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossAngelSlayerUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterArenaRush;}
}