/// @description Insert description here
// You can write your code in this editor
depth = -y-5;
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.Death_General_Zarodil)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y+100,1,obj_boss_deathGeneralZarodil);
	instance_create_depth(x,y,1,obj_deathScythe);
	instance_create_depth(x,y,98,obj_deathGeneralZarodilRange);
}