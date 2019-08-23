/// @description Insert description here
// You can write your code in this editor
state = 0;
enum SwordStates
{
	Idle,
	ChaseSpin,
}
state = SwordStates.Idle;
chaseStacks = 0;
global.sgChaseDamage = (7 + obj_player.hp*0.014)*(1 +(global.playerLevel/100));