/// @description Insert description here
depth = -9;
image_alpha = 0.5;
if (gameMaster.chosenBoss == Boss.DeathKing && instance_exists(obj_allBoss))
{
	x = obj_allBoss.x + obj_allBoss.teleportX;
	y = obj_allBoss.y + obj_allBoss.teleportY;
	if (obj_allBoss.canTeleport == true)
	{
		image_alpha = 1;
	}
	if (obj_allBoss.canTeleport == false)
	{
		image_alpha = 0;
	}
}