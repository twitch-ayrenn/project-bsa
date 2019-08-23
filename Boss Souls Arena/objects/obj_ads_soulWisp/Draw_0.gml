/// @description Insert description here
// You can write your code in this editor
draw_self();
if (hp < maxHp)
{
	draw_healthbar(x-7-1,y+7,x+7-1,y+8,(hp / maxHp) * 100,c_black,c_teal,c_aqua,0,true,true);
}
