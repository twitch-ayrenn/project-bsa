/// @description Insert description here
// You can write your code in this editor
if (hover == false){outline_start(1,c_maroon,sprite_index,32);}
if (hover == true)
{
	outline_start(1,c_lime,sprite_index,32);
	draw_sprite_ext(sprite_index,image_index,60,27,1.5,1.5,0,c_white,1);
}
if (thisItemSelected == true){outline_start(1,c_lime,sprite_index,32);}
draw_self();
outline_end();