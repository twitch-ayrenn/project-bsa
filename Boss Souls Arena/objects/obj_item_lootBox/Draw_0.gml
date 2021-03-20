/// @description Insert description here
// You can write your code in this editor
var shake = 1;
if (hover == false){outline_start(1,c_green,sprite_index,64); shake = 0;}
if (hover == true)
{
	outline_start(1,c_yellow,sprite_index,64);
	draw_sprite_ext(sprite_index,image_index,19+18 + random_range(-shake, shake),38.5+18 + random_range(-shake, shake),1.4,1.4,0,c_white,1);
	shake = 0.5;
}
if (thisItemSelected == true){outline_start(1,c_yellow,sprite_index,32); shake = 0.5;}
draw_sprite_ext( sprite_index, image_index, x + random_range(-shake, shake), y + random_range(-shake, shake), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
outline_end();