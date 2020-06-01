/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu_fill);
if (color == c_white)
{
	var textcolor = make_color_rgb(255,clamp(255-(text*8.8),0,255),clamp(255-(text*17),0,255));
	var textcolorFade = make_color_rgb(clamp(255-(text*1.75),230,255),clamp(255-(text*9.5),110,255),clamp(255-(text*17),0,255));
	var textSize = clamp(text/50,0.1,0.35);
	draw_text_transformed_color(x,y+yRise,int64(10*text),textSize,textSize,0,textcolor,textcolor,textcolorFade,textcolorFade,1+(yRise/15));
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
if (color == c_red)
{
	
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.15,0.15,0,color,color,color,color,1+(yRise/10));
}