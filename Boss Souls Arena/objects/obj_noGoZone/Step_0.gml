/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.player))
{
	global.player.x += (global.arenaMiddleX-global.player.x)*0.1;
	global.player.y += (global.arenaMiddleY-global.player.y)*0.1;
}