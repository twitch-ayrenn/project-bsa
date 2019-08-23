/// @description Insert description here
// You can write your code in this editor
if (color == c_white)
{
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.12,0.12,0,color,color,c_white,c_white,1+(yRise/15));
}
if (color == c_lime)
{
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.1,0.1,0,color,color,color,color,1+(yRise/15));
}
if (color == c_maroon)
{
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.15,0.15,0,color,color,color,color,1+(yRise/15));
}
if (color == c_red)
{
	draw_text_transformed_color(x,y+yRise,int64(10*text),0.15,0.15,0,color,color,color,color,1+(yRise/10));
}
if (color == c_gray)
{
	draw_text_transformed_color(x,y,string(text),0.15,0.15,0,color,color,color,color,1+(yRise/10));
}
if (color == global.playerTextColor)
{
	draw_text_transformed_color(obj_player.x-30,obj_player.y-30,string(text),0.1,0.1,0,color,color,color,color,1+(yRise/10));
}
if (color == c_yellow)
{
	draw_text_transformed_color(obj_npc_theShopkeeper.x,obj_npc_theShopkeeper.y-21+yRise,string(text),0.1,0.1,0,color,color,color,color,1+(yRise/20));
}
