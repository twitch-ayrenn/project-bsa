/// @description Insert description here
depth = -9;
image_alpha = 0.5;
if (instance_exists(obj_allBoss))
{
	if (gameMaster.chosenBoss == Boss.DeathKing || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		x = obj_allBoss.x + obj_allBoss.teleportX;
		y = obj_allBoss.y + obj_allBoss.teleportY;
		if (!place_free(obj_allBoss.x+obj_allBoss.teleportX,obj_allBoss.y+obj_allBoss.teleportY) || obj_allBoss.canTeleport == false)
		{
			image_alpha = 0;
		}
	}
}