/// @description Insert description here
// You can write your code in this editor
if (room == rm_theGreatCementary)
{
	draw_sprite_ext(spr_shadowScreen,0,obj_player.x,obj_player.y,2,2,1,c_white,1);
	draw_sprite_ext(spr_shadowScreen,0,obj_player.x,obj_player.y,-2,2,1,c_white,1);
	draw_sprite_ext(spr_shadowScreen,0,obj_player.x,obj_player.y,2,-2,1,c_white,1);
	draw_sprite_ext(spr_shadowScreen,0,obj_player.x,obj_player.y,-2,-2,1,c_white,1);
}
