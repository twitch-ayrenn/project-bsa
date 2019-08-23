/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
var name = "Spirit Of The Queen";
var phaseText = string(phase);
var brackets = "("
var brackets2 = ")"
var allText = brackets + phaseText + brackets2 + name;
draw_text_transformed_color(455,785,allText,0.25,0.25,0,c_teal,c_teal,c_white,c_white,1);
draw_healthbar(800,815+8,800+350,815-8,(hp / maxHp) * 100,c_black,c_teal,c_maroon,0,true,false);
draw_healthbar(800,815+8,800-350,815-8,(hp / maxHp) * 100,c_black,c_teal,c_maroon,0,true,false);
draw_sprite_ext(spr_boss_deathQueenZeria,0,1150,810,0.8,0.8,0,c_white,1);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(455,806,int64(hp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(495,806,"/",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(510,806,int64(maxHp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}
