/// @description Insert description here
depth = -y;
var player = instance_nearest(x,y,global.player);
var playerProjectile = instance_nearest(x,y,par_player_projectile);
var boss = instance_nearest(x,y,obj_allBoss);
var enemyProjectile = instance_nearest(x,y,obj_enemyProjectile);
if (tpPlayer == true)
{
	tpPlayer = false;
	player.x = obj_equipment_leftPortal.x;
	player.y = obj_equipment_leftPortal.y;
}
if (tpPlayerProjectile == true)
{
	tpPlayerProjectile = false;
	playerProjectile.x = obj_equipment_leftPortal.x;
	playerProjectile.y = obj_equipment_leftPortal.y;
}
if (tpBoss == true)
{
	tpBoss = false;
	boss.x = obj_equipment_leftPortal.x;
	boss.y = obj_equipment_leftPortal.y;
}
if (tpBossProjectile == true)
{
	tpBossProjectile = false;
	enemyProjectile.x = obj_equipment_leftPortal.x;
	enemyProjectile.y = obj_equipment_leftPortal.y;
}
if (place_meeting(x,y,player) && image_index == 0 && onCooldown == false)
{
	with (par_portal)
	{
		onCooldown = true;
		image_index = 1;
	}
	tpPlayer = true;
}
if (place_meeting(x,y,boss) && image_index == 0 && onCooldown == false)
{
	with (par_portal)
	{
		onCooldown = true;
		image_index = 1;
	}
	tpBoss = true;
}
if (place_meeting(x,y,enemyProjectile) && image_index == 0 && onCooldown == false && enemyProjectile.sprite_index != spr_beam && enemyProjectile.sprite_index != spr_gooGround)
{
	with (par_portal)
	{
		onCooldown = true;
		image_index = 1;
	}
	tpBossProjectile = true;
}
if (place_meeting(x,y,playerProjectile) && image_index == 0 && onCooldown == false)
{
	with (par_portal)
	{
		onCooldown = true;
		image_index = 1;
	}
	tpPlayerProjectile = true;
}
if (onCooldown == true && alarmCheck == true)
{
	alarmCheck = false;
	alarm[0] = (global.portalTime)*30;
}