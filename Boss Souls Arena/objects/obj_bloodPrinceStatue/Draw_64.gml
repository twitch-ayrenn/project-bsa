/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) <= 10 && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Fat_Zombie)
{
	draw_text_transformed_color(400,600,"Press E to summon The Blood Prince",0.5,0.5,0,c_red,c_red,c_maroon,c_maroon,1);
}
if (summonedBoss == false)
{
	if (instance_exists(obj_boss_bloodPrince) == false && gameMaster.menu != Menues.BossSlain)
	{
		draw_set_font(fnt_normalText);
		draw_text_transformed_color(455,750,"The Blood Prince",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
		draw_healthbar(800,800+15,800+350,800-15,(hp / 12) * 100,c_black,c_red,c_maroon,0,true,false);
		draw_healthbar(800,800+15,800-350,800-15,(hp / 12) * 100,c_black,c_red,c_maroon,0,true,false);
		draw_sprite_ext(spr_boss_bloodPrince_normal,0,1165,800,3,3,0,c_white,1);
		
		draw_rectangle_color(800-350,825,800-350+30,825+30,c_gray,c_gray,c_gray,c_gray,false);
		draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
		draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
		draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
	}
}
if (instance_exists(obj_boss_bloodPrince))
{
	if (obj_boss_bloodPrince.fase == 2)
	{
		draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
		draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
		draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
	}
	if (obj_boss_bloodPrince.fase == 3)
	{
		draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
		draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
	}
	if (obj_boss_bloodPrince.fase == 4)
	{
		draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_black,c_black,c_black,c_black,false);
		draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
	}
}
