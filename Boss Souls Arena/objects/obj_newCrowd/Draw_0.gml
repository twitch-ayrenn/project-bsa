/// @description Insert description here
// You can write your code in this editor
draw_self();
if (type = CrowdType.Demon)
{
	draw_sprite_ext(horns,image_index,x,y,image_xscale,image_yscale,0,c_white,alpha);
	draw_sprite_ext(eyeSprite,image_index,x,y,image_xscale,image_yscale,0,eyeColor,alpha);
}
if (type = CrowdType.DoodleWithPants)
{
	draw_sprite_ext(pants,image_index,x,y,image_xscale,image_yscale,0,pantsColor,alpha);
	draw_sprite_ext(eyeSprite,image_index,x,y,image_xscale,image_yscale,0,eyeColor,alpha);
}