/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.plaugeWalkerUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.PlaugeWalker;}
	with (obj_playerModel){sprite_index = spr_player_plagueWalker_idle;}
}
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.BossRush)
{
	if (gameMaster.bossPlaugeWalkerUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.PlaugeWalker;}
	with (obj_playerModel){sprite_index = spr_player_plagueWalker_idle;}
}