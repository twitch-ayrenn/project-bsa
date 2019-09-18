/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.PlayerSelect)
{
	if (gameMaster.shopkeeperUnlocked == true)
	{
		sprite_index = spr_theShopkeeper_outline_selected;
	}
	with (obj_playerInfoBox){playerShowInfoFor = Character.Shopkeeper;}
	with (obj_playerModel){sprite_index = spr_player_theShopkeeper;size = 1;}
}