/// @description Insert description here
// You can write your code in this editor
if (destroy == true && hp > 0)
{
	destroy = false;
	
	hp -= 1;
	
	alarm[1] = (1)*30;
}
if (hp <= 0){instance_destroy();}
if (x <= mouse_x){image_xscale = 1;}
if (x > mouse_x){image_xscale = -1;}