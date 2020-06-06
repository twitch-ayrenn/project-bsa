/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu_fill);
if (color == c_white)
{
	var textSize = clamp(text/50,0.1,0.35);
	draw_text_transformed_color(x,y+yRise,int64(10*text),textSize,textSize,0,c_white,c_white,c_silver,c_silver,1+(yRise/15));
}
if (color == c_lime)
{
	var textSize = clamp(text/60,0.1,0.25);
	draw_text_transformed_color(x,y+yRise,int64(10*text),textSize,textSize,0,c_lime,c_lime,c_green,c_green,1+(yRise/15));
}
if (color == c_maroon)
{
	var textSize = clamp(text/100,0.1,0.25);
	draw_text_transformed_color(x,y+yRise,int64(text),textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1+(yRise/15));
}
if (color == c_fuchsia)
{
	var textSize = 0.15;
	draw_text_transformed_color(x,y+yRise,text,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
if (color == c_red)
{
	
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.15,0.15,0,color,color,color,color,1+(yRise/10));
}