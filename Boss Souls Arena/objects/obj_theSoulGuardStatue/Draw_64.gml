/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) <= 15 && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Soul_Guards)
{
	draw_text_transformed_color(400,600,"Press E to summon The Soul Guards",0.5,0.5,0,c_red,c_red,c_maroon,c_maroon,1);
}
if (global.summonBossOnce == false && instance_exists(obj_boss_theSoulGuards) && instance_exists(obj_theSoulGuards_2))
{
	draw_text_transformed_color(455,750,"The Angel Guard and The Devil Guard",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_healthbar(800,800+20,800+350,800-10,((obj_boss_theSoulGuards.hp +obj_theSoulGuards_2.hp)/(obj_boss_theSoulGuards.maxHp + obj_theSoulGuards_2.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_healthbar(800,800+20,800-350,800-10,((obj_boss_theSoulGuards.hp +obj_theSoulGuards_2.hp)/(obj_boss_theSoulGuards.maxHp + obj_theSoulGuards_2.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_sprite_ext(spr_boss_theSoulGuards_Teleport,0,1150,800,2,2,0,c_white,1);
	if (global.ShowInfo == true)
	{
		var currentHp = string(int64((obj_boss_theSoulGuards.hp +obj_theSoulGuards_2.hp)*10));
		var bossMaxHp = string(int64((obj_boss_theSoulGuards.maxHp + obj_theSoulGuards_2.maxHp)*10));
		var bossHealthInfo = currentHp + global.slash + bossMaxHp;
		draw_text_transformed_color(455,791,bossHealthInfo,0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	}
}
if (global.summonBossOnce == false && instance_exists(obj_boss_theSoulGuards) == true && instance_exists(obj_theSoulGuards_2) == false)
{
	draw_text_transformed_color(455,750,"The Angel Guard",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_healthbar(800,800+20,800+350,800-10,((obj_boss_theSoulGuards.hp )/(obj_boss_theSoulGuards.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_healthbar(800,800+20,800-350,800-10,((obj_boss_theSoulGuards.hp) / (obj_boss_theSoulGuards.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_sprite_ext(spr_boss_theSoulGuards_Teleport,0,1150,800,2,2,0,c_white,1);
	if (global.ShowInfo == true)
	{
		var currentHp = string(int64((obj_boss_theSoulGuards.hp)*10));
		var bossMaxHp = string(int64((obj_boss_theSoulGuards.maxHp)*10));
		var bossHealthInfo = currentHp + global.slash + bossMaxHp;
		draw_text_transformed_color(455,791,bossHealthInfo,0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	}
}
if (global.summonBossOnce == false && instance_exists(obj_boss_theSoulGuards) == false && instance_exists(obj_theSoulGuards_2) == true)
{
	draw_text_transformed_color(455,750,"The Devil Guard",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_healthbar(800,800+20,800+350,800-10,((obj_theSoulGuards_2.hp )/(obj_theSoulGuards_2.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_healthbar(800,800+20,800-350,800-10,((obj_theSoulGuards_2.hp) / (obj_theSoulGuards_2.maxHp)) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_sprite_ext(spr_boss_theSoulGuards_Teleport,0,1150,800,2,2,0,c_white,1);
	if (global.ShowInfo == true)
	{
		var currentHp = string(int64((obj_theSoulGuards_2.hp)*10));
		var bossMaxHp = string(int64((obj_theSoulGuards_2.maxHp)*10));
		var bossHealthInfo = currentHp + global.slash + bossMaxHp;
		draw_text_transformed_color(455,791,bossHealthInfo,0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	}
}