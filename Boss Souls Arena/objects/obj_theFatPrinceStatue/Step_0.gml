/// @description Insert description here
// You can write your code in this editor
depth = -y-5;
if (distance_to_object(obj_player) >= 200*0.85 && instance_exists(obj_boss_theFatZombie) && instance_exists(obj_theFatZombieRange_red))
{
	with(obj_player)
	{
		hp -= (0.5 + hp*0.05)/30;
		var damageToTarget = (0.5 + obj_player.hp*0.05)/30;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}
if (distance_to_object(obj_player) >= 200*0.85*0.8 && instance_exists(obj_boss_theFatZombie) && instance_exists(obj_theFatZombieRange_green))
{
	with(obj_player)
	{
		hp -= (1 + hp*0.15)/30;
		var damageToTarget = (1 + obj_player.hp*0.15)/30;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Fat_Zombie)
{
	summonedBoss = false;
	instance_create_depth(x,y-50,1,obj_boss_theFatZombie);
	instance_create_depth(x,y,1,obj_theFatZombieRange_red);
	image_index = 1;
}

if(instance_exists(obj_boss_theFatZombie))
{
	if (obj_boss_theFatZombie.fase == 1)
	{
		image_index = 1;	
	}
	if (obj_boss_theFatZombie.fase == 2)
	{
		image_index = 2;	
	}
	if (obj_boss_theFatZombie.fase == 3)
	{
		image_index = 3;	
	}
	if (obj_boss_theFatZombie.fase == 4)
	{
		image_index = 4;	
	}
}