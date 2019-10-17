/// @description Insert description here
// You can write your code in this editor
if (follow == true)
{
	x = obj_allBoss.x;
	y = obj_allBoss.y;
}
if (followPlayer == true)
{
	x = global.player.x;
	y = global.player.y;
	if (gameMaster.chosenBoss == Boss.DeathKnight){x = global.player.x+40;}
}