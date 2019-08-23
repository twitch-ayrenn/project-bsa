/// @description Insert description here
// You can write your code in this editor
if (class == Class.The_GuardianWisp)
{	
	draw_healthbar(75,60,75+100+maxHp*1.5,60+20,(hp / maxHp) * 100,c_black,c_yellow,global.goldColor,0,true,true);
	draw_sprite_ext(spr_item_guardianWisp,0,50,75,3.5,3.5,0,c_white,1)
}
