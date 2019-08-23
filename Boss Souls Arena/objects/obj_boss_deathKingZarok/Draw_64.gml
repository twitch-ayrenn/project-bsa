/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,750,"Death King Zarok",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
draw_healthbar(800,800+20,800+350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_healthbar(800,800+20,800-350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_deathKingZarok,0,1165,815,2,2,0,c_white,1);
if (global.ShowInfo == true)
{
	var currentHp = string(int64(hp*10));
	var bossMaxHp = string(int64(maxHp*10));
	var bossHealthInfo = currentHp + global.slash + bossMaxHp;
	draw_text_transformed_color(455,791,bossHealthInfo,0.3,0.3,0,c_white,c_white,c_white,c_white,1);
}
if (phase == 1)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,global.goldColor,global.goldColor,global.goldColor,global.goldColor,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
}
if (phase == 2)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
}
if (phase == 3)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_maroon,c_maroon,c_maroon,c_maroon,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
}
if (phase == 4)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_red,c_red,c_red,c_red,false);
}
