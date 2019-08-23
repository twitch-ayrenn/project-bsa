/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,785,"Scarlet the yellow",0.25,0.25,0,c_yellow,c_yellow,c_white,c_white,1);
draw_healthbar(800,815+8,800+350,815-8,(hp / maxHp) * 100,c_black,c_yellow,c_maroon,0,true,false);
draw_healthbar(800,815+8,800-350,815-8,(hp / maxHp) * 100,c_black,c_yellow,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_theYellowWitch,0,1150,800,1.5,1.5,0,c_white,1);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(455,806,int64(hp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(495,806,"/",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(510,806,int64(maxHp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}