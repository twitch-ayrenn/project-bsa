/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.assassinUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.ShadowAssassin;}
	with (obj_playerModel){sprite_index = spr_player_theAssasin;}
}
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.BossRush)
{
	if (gameMaster.bossAssassinUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.ShadowAssassin;}
	with (obj_playerModel){sprite_index = spr_player_theAssasin;}
}