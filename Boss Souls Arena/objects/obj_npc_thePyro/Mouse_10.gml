/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect)
{
	if (gameMaster.pyromancerUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.Pyromancer;}
	with (obj_playerModel){sprite_index = spr_player_theMage_menu;}
	
}