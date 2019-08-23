/// @description Insert description here
//tp spots
draw_self();
if (fase == 4 || fase == 3)
{
	draw_sprite_ext(spr_batTpPlace,0,x+70,y+70,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x+70,y-70,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x+70,y,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x-70,y+70,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x-70,y-70,1,1,0,c_white,1)
	draw_sprite_ext(spr_batTpPlace,0,x-70,y,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x,y+70,1,1,0,c_white,1);
	draw_sprite_ext(spr_batTpPlace,0,x,y-70,1,1,0,c_white,1);
}