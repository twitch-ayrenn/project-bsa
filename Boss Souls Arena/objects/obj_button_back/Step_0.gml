/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.Main || gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.BossLoot || gameMaster.menu == Menues.BossSelect)
{
	x = 22.5;
	y = 134.5;
	image_xscale = 1;
	image_yscale = 1;
}
if (gameMaster.menu == Menues.BossSlain || gameMaster.menu == Menues.Death)
{
	x = global.player.x-100-50-15-15-15;
	y = global.player.y+50+25+15+15+5;
}
