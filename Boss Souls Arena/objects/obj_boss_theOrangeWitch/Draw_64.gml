/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,750,"Elise The Orange",0.25,0.25,0,global.orange,global.orange,c_white,c_white,1);
draw_healthbar(800,780+8,800+350,780-8,(hp / maxHp) * 100,c_black,global.orange,c_maroon,0,true,false);
draw_healthbar(800,780+8,800-350,780-8,(hp / maxHp) * 100,c_black,global.orange,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_theOrangeWitch,0,1150,780,1.5,1.5,0,c_white,1);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(455,771,int64(hp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(495,771,"/",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(510,771,int64(maxHp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}