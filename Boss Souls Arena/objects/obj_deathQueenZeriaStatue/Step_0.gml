/// @description Insert description here
// You can write your code in this editor
depth = -y-15;
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.Death_Queen_Zeria)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x+100,y+100,1,obj_ads_deathKnights_1);
	instance_create_depth(x+100,y-100,1,obj_ads_deathKnights_2);
	instance_create_depth(x+100,y+100,1,obj_deathKnightScythe_1);
	instance_create_depth(x+100,y-100,1,obj_deathKnightScythe_2);
	instance_create_depth(x,y,98,obj_deathQueenZeriaRange);
}
if (summonedBoss == false && instance_exists(par_deathKnights) == false && summonOnce == true)
{
	instance_create_depth(x+50,y,depth,obj_boss_deathQueenZeria);	
	summonOnce = false;
}