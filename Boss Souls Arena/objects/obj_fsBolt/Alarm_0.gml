/// @description Insert description here
if (image_xscale < 2 && image_xscale > 1)
{
	var fbPAngleL = 0;
	var fbPAmountL = 9;
	repeat(fbPAmountL)
	{
		var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
		fireBolt.direction = fbPAngleL;
		fireBolt.image_angle = fireBolt.direction+90;
		fireBolt.speed = 5;
		fireBolt.image_xscale = 1;
		fireBolt.image_yscale = fireBolt.image_xscale;
		fireBolt.timeToDestroy = 10;
		fbPAngleL += 360/fbPAmountL;
	}
}
instance_destroy();