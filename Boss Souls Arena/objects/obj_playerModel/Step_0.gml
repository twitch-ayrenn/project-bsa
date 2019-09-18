/// @description Insert description here
// You can write your code in this editor
depth = -1000;
if (gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.BossLoot)
{
	visible = true;	
}
if (gameMaster.menu != Menues.PlayerSelect && gameMaster.menu != Menues.BossLoot)
{
	visible = false;	
}
if (sprite_index != spr_player_theRainbowSlime && sprite_index != spr_player_graveling)
{
	size = 1.25;
}
if (gameMaster.menu == Menues.PlayerSelect)
{
	x = 28;
	y = 56;
}
if (gameMaster.menu == Menues.BossLoot)
{
	x = 28-4;
	y = 56-16;
}
if (sprite_index != spr_player_theRainbowSlime){image_blend = c_white;}
image_xscale = size;
image_yscale = size;