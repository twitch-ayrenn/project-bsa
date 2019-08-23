/// @description Insert description here
// You can write your code in this editor
draw_self();
if (hp < maxHp)
{
	draw_healthbar(x-7-1,y+14,x+7-1,y+15,(hp / maxHp) * 100,c_black,c_dkgray,c_ltgray,0,true,true);
}
