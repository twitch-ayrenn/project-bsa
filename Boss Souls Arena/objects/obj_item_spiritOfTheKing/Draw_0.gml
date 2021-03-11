/// @description Insert description here
// You can write your code in this editor
if (hover == false){outline_start(1,c_maroon,sprite_index,64);}
if (hover == true)
{
	outline_start(1,c_yellow,sprite_index,64);
	draw_sprite_ext(sprite_index,image_index,208+18,12+18,2,2,0,c_white,1);
}
if (thisItemSelected == true){outline_start(1,c_yellow,sprite_index,32);}
draw_self();
outline_end();