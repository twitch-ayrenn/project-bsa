/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) <= 10 && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Infernal_Wisp)
{
	draw_text_transformed_color(400,600,"Press E to summon The Infernal Wisp",0.5,0.5,0,c_red,c_red,c_maroon,c_maroon,1);
}
if (instance_exists(par_infernalWisp))
{
	draw_set_font(fnt_normalText);
	draw_text_transformed_color(455,750,"The Infernal Wisp",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_healthbar(800,800+15,800+350,800-15,(global.wispAmount / 63) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_healthbar(800,800+15,800-350,800-15,(global.wispAmount / 63) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_sprite_ext(spr_boss_theInfernalWisp,0,1165,800,3,3,0,c_white,1);
}