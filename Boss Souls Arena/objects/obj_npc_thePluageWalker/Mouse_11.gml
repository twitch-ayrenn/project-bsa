/// @description Insert description here
if (gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.plaugeWalkerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.plaugeWalkerUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterCampaign;}
}
if (gameMaster.chosenMode ==  Menues.BossRush)
{
	if (gameMaster.bossPlaugeWalkerUnlocked == false)
	{
		outline = "locked";
	}
	if (gameMaster.bossPlaugeWalkerUnlocked == true)
	{
		outline = "unSelected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterArenaRush;}
}