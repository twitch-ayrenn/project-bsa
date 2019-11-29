/// @description Insert description here
// You can write your code in this editor
depth = -y;
y += 25;
y = clamp(y, 0,588);
if (y == 588 && shakeOnce == true)
{
	shakeOnce = false;
	with(obj_camera){shake_remain += 10;}
}
if (distance_to_object(global.player) < 25 && doOpen == true)
{
	doOpen = false
	open = true;
}
if (open == true && doOpen == false)
{
	open = false;
	shake = shakeStrength;
	phase = 2;
	
	alarm[0] = timeBeforeOpen;
}
if (blowRoofUp == true)
{
	roofY -= 20;	
}
yUpDown += clamp(changer,-upDownMax,upDownMax);
if (yUpDown == 2){changer *= -1;}
if (yUpDown == -2){changer *= -1;}