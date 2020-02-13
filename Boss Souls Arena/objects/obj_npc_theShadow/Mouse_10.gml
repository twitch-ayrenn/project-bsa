/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect)
{
	if (gameMaster.assassinUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.ShadowAssassin;}
	with (obj_playerModel){sprite_index = spr_player_theAssasin;}
}