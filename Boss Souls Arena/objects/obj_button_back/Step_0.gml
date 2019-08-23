/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.Main || gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.BossLoot || gameMaster.menu == Menues.BossSelect)
{
	x = 22.5;
	y = 134.5;
	image_xscale = 1;
	image_yscale = 1;
}
if (gameMaster.menu == Menues.BossSlain)
{
	if (instance_exists(obj_player))
	{
		x = obj_player.x-100-50-15;
		y = obj_player.y+50+25+15;
	}
}
if (gameMaster.menu == Menues.Death)
{
	x = obj_deadPlayer.x-100-50-15;
	y = obj_deadPlayer.y+50+25+15;
}

