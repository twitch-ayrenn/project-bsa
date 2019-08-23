/// @description teleport
fase3DoTeleport = true;
fase4DoTeleport = true;
x += choose(70,0,-70);
y += choose(70,0,-70);
var angle = 0;
repeat(12)
{
	var fastBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
		fastBat.direction = angle;
		fastBat.speed = 5; 
		fastBat.damage = fase3Damage;
		angle += 360/12;
}