/// @description Insert description here
// You can write your code in this editor
enum DeathScytheState
{
	Still,
	Attack,
	TauntSpein
}
state = DeathScytheState.Still;
size = 1.5;
image_xscale = size;
image_yscale = size;
chaseStacks = 0;
hp = 0;
doAttack = true;
angleIncrease = 35;
global.spinTimes = 3;
playerAngle = point_direction(obj_boss_deathGeneralZarodil.x,obj_boss_deathGeneralZarodil.y,
obj_player.x,obj_player.y);