/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.Main || gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.BossLoot || gameMaster.menu == Menues.BossSelect || gameMaster.menu == Menues.Credits )
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
if (gameMaster.menu == Menues.BossSlain && point_distance(global.player.x,global.player.y,830,600) <= 20 && gameMaster.queLeave == false||
gameMaster.menu == Menues.BossSlain && point_distance(global.player.x,global.player.y,400,600) <= 20 && gameMaster.queLeave == false)
{
	gameMaster.queLeave = true;
	gameMaster.leaveTranistionAlpha = 0;
}