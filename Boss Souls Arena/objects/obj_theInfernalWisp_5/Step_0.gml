/// @description Insert description here
// vars
if (x < obj_player.x){sizeX = size;}
if (x > obj_player.x){sizeX = -size;}
sizeY = size;
image_xscale = sizeX;
image_yscale = sizeY;
depth = -y;
image_alpha = 0.75;
//movement
if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 1)
{
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,moveSpeed);
}
//
if (doSingleAttack == true)
{
	doSingleAttack = false;
	
	alarm[0] = doSingleAttackTime;
}
if (doCirkleAttack == true)
{
	doCirkleAttack = false;
	
	alarm[0] = doCirkleAttackTime;
}
//death
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
	//reward
	global.playerMoney += 10;
	global.wispAmount -= 1;
	//boss
	if (realSize == global.tier1Size)
	{
		instance_create_depth(x+7,y,depth,obj_theInfernalWisp_2)
		instance_create_depth(x-7,y,depth,obj_theInfernalWisp_2)
	}
	if (realSize == global.tier2Size)
	{
		instance_create_depth(x+7,y,depth,obj_theInfernalWisp_3)
		instance_create_depth(x-7,y,depth,obj_theInfernalWisp_3)
	}
	if (realSize == global.tier3Size)
	{
		instance_create_depth(x+7,y,depth,obj_theInfernalWisp_4)
		instance_create_depth(x-7,y,depth,obj_theInfernalWisp_4)			
	}
	if (realSize == global.tier4Size)
	{
		instance_create_depth(x+7,y,depth,obj_theInfernalWisp_5)
		instance_create_depth(x-7,y,depth,obj_theInfernalWisp_5)			
	}
	if (realSize == global.tier5Size)
	{
		instance_create_depth(x+7,y,depth,obj_theInfernalWisp_6)
		instance_create_depth(x-7,y,depth,obj_theInfernalWisp_6)
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
	}
	if (realSize == global.tier6Size)
	{
			
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	instance_destroy();
}