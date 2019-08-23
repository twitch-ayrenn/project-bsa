/// @description Insert description here
// You can write your code in this editor
depth = -y;
damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/75))*global.dD;
if (canShoot == true)
{
	canShoot = false;
	
	alarm[0] = (2)*30;
}
if (hp <= 0)
{
	repeat(5*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),y-1000,obj_healthOrb);	
	}
	var pendantAngle = 0;
	if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
	{
		repeat(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
		{
			var scarletShot = instance_create_depth(x,y,depth+1,obj_item_scarletShot);
			scarletShot.direction = pendantAngle;
			scarletShot.speed = global.scarletShotSpeed;
			scarletShot.image_angle = pendantAngle+90;
			pendantAngle += 360/(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost));
		}
	}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.02;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 3;
		}
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	instance_destroy();
}