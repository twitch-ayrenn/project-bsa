/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_menu_fill);
if (global.ShowInfo == true)
{
	draw_text_transformed_color(mouse_x-6.5,mouse_y-8,obj_player.portalAmount,0.05,0.05,0,global.orange,global.orange,global.orange,global.orange,1);
}