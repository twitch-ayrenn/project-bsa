/// @description Insert description here
// You can write your code in this editor
draw_self();
if (hp < maxHp)
{
	draw_healthbar(x-8,y+(sprite_height/2)+2,x+8,y+(sprite_height/2)+3,(hp / maxHp) * 100,c_black,c_maroon,c_red,0,true,true);
}