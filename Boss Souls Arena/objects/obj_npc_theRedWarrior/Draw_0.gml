/// @description Insert description here
// You can write your code in this editor
if (outline == "selected")
{
	outline_start(1,c_lime,sprite_index,64);
	image_blend = c_white;
}
if (outline == "unSelected")
{
	outline_start(1,global.greenOutline,sprite_index,64);
	image_blend = c_white;
}
if (outline == "locked")
{
	outline_start(1,global.maroonOutline,sprite_index,64);
	image_blend = c_gray;
}
draw_self();
outline_end();