/// @description Insert description here
// You can write your code in this editor
if (hover == false){outline_start(1,c_green,sprite_index,64);}
if (hover == true)
{
	outline_start(1,c_lime,sprite_index,64);
	draw_sprite_ext(sprite_index,image_index,19+18,37+18,1.25,1.25,0,c_white,1);
}
if (thisItemSelected == true){outline_start(1,c_lime,sprite_index,32);}
draw_self();
outline_end();