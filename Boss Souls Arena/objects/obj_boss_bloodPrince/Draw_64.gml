/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
draw_text_transformed_color(455,755,"The Blood Prince",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
draw_healthbar(800,800+15,800+350,800-15,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_healthbar(800,800+15,800-350,800-15,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_bloodPrince_normal,0,1165,800,3,3,0,c_white,1);
if (global.ShowInfo == true)
{
	var currentHp = string(int64(hp*10));
	var bossMaxHp = string(int64(maxHp*10));
	var bossHealthInfo = currentHp + global.slash + bossMaxHp;
	draw_text_transformed_color(455,791,bossHealthInfo,0.3,0.3,0,c_white,c_white,c_white,c_white,1);
}

