/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,820,"Annie The Green",0.25,0.25,0,c_green,c_green,c_white,c_white,1);
draw_healthbar(800,850+8,800+350,850-8,(hp / maxHp) * 100,c_black,c_green,c_maroon,0,true,false);
draw_healthbar(800,850+8,800-350,850-8,(hp / maxHp) * 100,c_black,c_green,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_theGreenWitch,0,1150,850,1.5,1.5,0,c_white,1);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(455,841,int64(hp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(495,841,"/",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(510,841,int64(maxHp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}