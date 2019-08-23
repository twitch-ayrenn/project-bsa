/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,750,"The Flame Gate",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
draw_healthbar(800,800+20,800+350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_healthbar(800,800+20,800-350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_theFlameGate,0,1165,815,2,2,0,c_white,1);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(455,791,int64(hp*10),0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(515,791,"/",0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(530,791,int64(maxHp*10),0.3,0.3,0,c_white,c_white,c_white,c_white,1);
}
if (phase == 1)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,global.orange,global.orange,global.orange,global.orange,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,global.orange,global.orange,global.orange,global.orange,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_red,c_red,c_red,c_red,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
}
if (phase == 2)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,global.orange,global.orange,global.orange,global.orange,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_red,c_red,c_red,c_red,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
}
if (phase == 3)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_red,c_red,c_red,c_red,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
}
if (phase == 4)
{
	draw_rectangle_color(800-350,825,800-350+30,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+35,825,800-350+30+35,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+70,825,800-350+30+70,825+30,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(800-350+105,825,800-350+30+105,825+30,c_yellow,c_yellow,c_yellow,c_yellow,false);
}
