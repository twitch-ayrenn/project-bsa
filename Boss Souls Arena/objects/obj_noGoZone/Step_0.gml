/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.player) && global.player.meteorStun == 1 && room == rm_arena)
{
	global.player.x += (global.arenaMiddleX-global.player.x)*0.055;
	global.player.y += (global.arenaMiddleY-global.player.y)*0.055;
}
if (place_meeting(x,y,global.player) && global.player.meteorStun == 1 && room == rm_tutorial)
{
	global.player.x += (obj_tutorialMiddle.x-global.player.x)*0.055;
	global.player.y += (obj_tutorialMiddle.y-global.player.y)*0.055;
}
if (place_meeting(x,y,obj_allBoss) && room == rm_arena)
{
	var checkIfAttackIsFall = true;
	with (obj_allBoss)
	{
		if (attack == Atks.ChaseAttack){checkIfAttackIsFall = false;}	
	}
	if (checkIfAttackIsFall)
	{
		obj_allBoss.x += (global.arenaMiddleX-obj_allBoss.x)*0.025;
		obj_allBoss.y += (global.arenaMiddleY-obj_allBoss.y)*0.025;
	}
}