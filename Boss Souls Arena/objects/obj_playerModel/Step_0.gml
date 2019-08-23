/// @description Insert description here
// You can write your code in this editor
depth = -1000;
if (gameMaster.menu == Menues.PlayerSelect)
{
	visible = true;	
}
if (gameMaster.menu != Menues.PlayerSelect)
{
	visible = false;	
}
if (sprite_index != spr_player_theRainbowSlime && sprite_index != spr_player_graveling)
{
	size = 1.25;	
}
if (sprite_index != spr_player_theRainbowSlime){image_blend = c_white;}
image_xscale = size;
image_yscale = size;