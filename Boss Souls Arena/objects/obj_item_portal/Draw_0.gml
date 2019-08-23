/// @description Insert description here
// You can write your code in this editor
draw_self();
if (global.ShowInfo == true)
{
	draw_healthbar(x+5,y-7+8,x+6,y+7+8,(destroyStacks / (portalLength)) * 100,c_black,global.orange,global.orange,3,true,true);
}