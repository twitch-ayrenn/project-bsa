/// @description Insert description here
// You can write your code in this editor
if (gameMaster.rainbowSlimeUnlocked == true)
{
	sprite_index = spr_rainbowSlime_outline_selected;
}
with (obj_playerInfoBox){playerShowInfoFor = Character.RainbowSlime;}
with (obj_playerModel){sprite_index = spr_player_theRainbowSlime;size = 1;}
obj_playerModel.image_blend = image_blend;