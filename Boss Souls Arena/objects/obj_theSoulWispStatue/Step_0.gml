/// @description Insert description here
// You can write your code in this editor
depth = -y-40;
if (distance_to_object(obj_player) <= 15 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Soul_Wisp)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_boss_theSoulWisp);
	instance_create_depth(x,y,depth,obj_theSoulWisp_range)
}