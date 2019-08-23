/// @description Insert description here
// You can write your code in this editor
draw_self();
if (global.ShowInfo == true)
{
	draw_healthbar(x-5,y+8,x+4,y+8+1,(destroyStacks / (deathTimer)) * 100,c_black,c_aqua,c_aqua,0,true,true);
}
