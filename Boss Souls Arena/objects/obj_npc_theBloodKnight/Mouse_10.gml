/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.bloodKnightUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.BloodKnight;}
	with (obj_playerModel){sprite_index = spr_player_theBloodKnight;}
}
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.BossRush)
{
	if (gameMaster.bossBloodKnightUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.BloodKnight;}
	with (obj_playerModel){sprite_index = spr_player_theBloodKnight;}
}