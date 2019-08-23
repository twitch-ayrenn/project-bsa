/// @description Insert description here
// You can write your code in this editor
depth = -y-5;
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_GraveKeeper)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_boss_theGraveKeeper);
	instance_create_depth(x,y,1,obj_scythe);
	instance_create_depth(x,y,depth,obj_keeperRange)
	instance_create_depth(x,y,depth,obj_keeperRange_in)
}
if (distance_to_object(obj_player) >= 200*1.5 && instance_exists(obj_boss_theGraveKeeper))
{
	with(obj_player)
	{
		hp -= 1/10;
		var damageToTarget = 1/10;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
	}
}
