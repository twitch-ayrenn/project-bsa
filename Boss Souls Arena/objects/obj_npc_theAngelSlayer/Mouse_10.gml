/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.Campaign)
{
	if (gameMaster.angelSlayerUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.AngelSlayer;}
	with (obj_playerModel){sprite_index = spr_player_angelSlayer_idle;}
}
if (gameMaster.menu == Menues.PlayerSelect && gameMaster.chosenMode == Menues.BossRush)
{
	if (gameMaster.bossAngelSlayerUnlocked == true)
	{
		outline = "selected"
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.AngelSlayer;}
	with (obj_playerModel){sprite_index = spr_player_angelSlayer_idle;}
}