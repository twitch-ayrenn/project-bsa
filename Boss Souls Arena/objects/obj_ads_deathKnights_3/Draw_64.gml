/// @description HealthBars
display_set_gui_size(1600,900);
draw_set_font(fnt_normalText);
if (hp < maxHp)
{
	draw_healthbar(x-7-1,y+7,x+7-1,y+8,(hp / maxHp) * 100,c_black,c_dkgray,c_ltgray,0,true,true);
}