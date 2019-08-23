/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
if (instance_exists(obj_theSoulGuards_2)== false)
{
	draw_text_transformed_color(455,750,"The Angel Guard",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_healthbar(800,800+20,800+350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_healthbar(800,800+20,800-350,800-10,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
	draw_sprite_ext(spr_boss_theSoulGuards_Teleport,0,1150,800,2,2,0,c_white,1);
	if (global.ShowInfo == true)
	{
		draw_text_transformed_color(455,791,int64(hp*10),0.3,0.3,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(515,791,"/",0.3,0.3,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(530,791,int64(maxHp*10),0.3,0.3,0,c_white,c_white,c_white,c_white,1);
	}
}