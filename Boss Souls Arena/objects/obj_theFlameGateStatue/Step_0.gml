/// @description Insert description here
// You can write your code in this editor
depth = -y-40;
if (distance_to_object(obj_player) <= 15 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Flame_Gate)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_boss_theFlameGate);
	instance_create_depth(x,y,depth,obj_flameGate_range)
}