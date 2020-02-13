/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect)
{
	if (gameMaster.gravelingUnlocked == true)
	{
		outline = "selected";
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.Graveling;}
	with (obj_playerModel){sprite_index = spr_player_graveling;size = 0.8;}
}