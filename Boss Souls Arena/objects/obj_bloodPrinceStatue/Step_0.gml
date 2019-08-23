/// @description Insert description here
// You can write your code in this editor
depth = -y-5;
if (hp == 12 && summonedBoss2 == true)
{
	summonedBoss2 = false;
	instance_create_depth(x,y-50,1,obj_boss_bloodPrince);
	image_index = 2;
	
}
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Blood_Prince)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_bloodPrinceRange)
	var plusX = -25;
	var plusY = -25;
	repeat(3)
	{
		var bat = instance_create_depth(x+plusX+500,y+plusY,1,obj_ads_bloodBatBig);
		plusX += 5;
		plusY += 5;
	}
	repeat(3)
	{
		var bat = instance_create_depth(x+plusX-500,y+plusY,1,obj_ads_bloodBatBig);
		plusX += 5;
		plusY += 5;
	}
	repeat(3)
	{
		var bat = instance_create_depth(x+plusX,y+plusY-500,1,obj_ads_bloodBatBig);
		plusX += 5;
		plusY += 5;
	}
	repeat(3)
	{
		var bat = instance_create_depth(x+plusX,y+plusY+500,1,obj_ads_bloodBatBig);
		plusX += 5;
		plusY += 5;
	}
	if (global.musicOn == true)
	{
		audio_play_sound(snd_boss_theBloodPrince,Prioity.Normal,true);
	}
}