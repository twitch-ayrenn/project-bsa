/// @description Insert description here
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = destroyTime;
}
if (place_meeting(x,y,obj_allBoss) && foundTarget == false)
{
	foundTarget = true;
	speed = 0;
	distanceToBossX = x - obj_allBoss.x;
	distanceToBossY = y - obj_allBoss.y;
	obj_leech.image_index = 1;
	shootDirection = image_angle;
	dealDamage = true;
	destroy = true;
	target = "boss";
}
if (place_meeting(x,y,par_plagueSummoning) && foundTarget == false)
{
	foundTarget = true;
	nearestThing = instance_nearest(x,y,par_plagueSummoning);
	targetId = nearestThing.id;
	speed = 0;
	distanceToAllyX = x - targetId.x;
	distanceToAllyY = y - targetId.y;
	obj_leech.image_index = 2;
	shootDirection = image_angle;
	dealDamage = true;
	destroy = true;
	target = "allied";
}
if (foundTarget == true)
{
	var rotation = 7;
	if (shootDirection > 180 && shootDirection < 270){image_angle = clamp(image_angle + rotation,0,360);}
	else{image_angle = clamp(image_angle - rotation,0,360);}
	if (target == "boss" && instance_exists(obj_allBoss))
	{
		depth = obj_allBoss.depth-5;
		image_alpha = obj_allBoss.image_alpha; 
		x = obj_allBoss.x + distanceToBossX*0.30;
		y = obj_allBoss.y + distanceToBossY*0.30;
		if (dealDamage == true)
		{
			dealDamage = false;
			
			alarm[1] = (1)*30
		}
		
	}
	if (target == "allied" && instance_exists(targetId))
	{
		depth = targetId.depth-5;
		x = targetId.x + distanceToBossX*0.30;
		y = targetId.y + distanceToBossY*0.30;
		if (dealDamage == true)
		{
			dealDamage = false;
			
			alarm[1] = (1)*30
		}
		
	}
	if (instance_exists(obj_allBoss) == false && target == "boss"){instance_destroy();}
	if (instance_exists(targetId) == false && target == "allied"){instance_destroy();}
}