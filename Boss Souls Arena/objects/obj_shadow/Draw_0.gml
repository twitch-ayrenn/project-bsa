/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(0.75);
draw_healthbar(x+8,y-6+0,x+9,y+6+0,(destroyStacks / (shadowLength)) * 100,c_black,c_fuchsia,c_fuchsia,3,true,true);