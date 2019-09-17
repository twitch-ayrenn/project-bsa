/// @description Insert description here
// You can write your code in this editor
draw_self();
if (bodyType < 7)
{
	if (image_xscale < 0)
	{
		draw_sprite_ext(eyeSprite,image_index,x-1,y-1,image_xscale,image_yscale,0,image_blend,image_alpha);
	}
	if (image_xscale > 0)
	{
		draw_sprite_ext(eyeSprite,image_index,x+1,y-1,image_xscale,image_yscale,0,image_blend,image_alpha);
	}	
}
if (bodyType == 7)
{
	if (image_xscale < 0)
	{
		draw_sprite_ext(eyeSprite,0,x,y+1,image_xscale,image_yscale,0,image_blend,image_alpha);
	}
	if (image_xscale > 0)
	{
		draw_sprite_ext(eyeSprite,0,x,y+1,image_xscale,image_yscale,0,image_blend,image_alpha);
	}	
}
if (bodyType == 8)
{
	if (image_xscale < 0)
	{
		draw_sprite_ext(eyeSprite,image_index,x-3,y+1,image_xscale,image_yscale,0,image_blend,0.8);
	}
	if (image_xscale > 0)
	{
		draw_sprite_ext(eyeSprite,image_index,x+3,y+1,image_xscale,image_yscale,0,image_blend,0.8);
	}	
}