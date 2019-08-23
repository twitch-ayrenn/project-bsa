/// @description code
// destroy
destroyStacks++;
if (instance_exists(obj_boss_bloodPrince) == true)
{
	if (destroyStacks >= (5)*30)
	{
		instance_destroy();
	}
}
//state
if (distance_to_point(obj_player.x+pointX,obj_player.y+pointY) > 30 && instance_exists(obj_player))
{
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,obj_player.moveSpeed+0.6);
}
if (instance_exists(obj_player) == false)
{
	move_towards_point(obj_theMadWitchStatue.x+pointX,obj_theMadWitchStatue.y+pointY,3);
}
//hp and death
if (hp <= 0)
{
	repeat(5*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
	if (instance_exists(obj_boss_bloodPrince) == false)
	{
		with (obj_bloodPrinceStatue)
		{
			hp += 1;
		}
		
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
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
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
	instance_destroy();	
}
if (place_meeting(x,y,obj_player))
{
	var damageToTarget = obj_player.hp*0.05*(1 +(global.playerLevel/100));
	var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	with(obj_player)
	{
		hp -= obj_player.hp*0.05*(1 +(global.playerLevel/100));
	}
	if (instance_exists(obj_boss_bloodPrince))
	{
		var healBossAmount = obj_player.hp*0.05*(1 +(global.playerLevel/100))*0.4;
		var healBoss = instance_create_depth(obj_boss_bloodPrince.x+irandom_range(-8,8),obj_boss_bloodPrince.y+irandom_range(-5,5),obj_boss_bloodPrince.depth-10,obj_textMaker);
		healBoss.color = c_red;
		healBoss.text = healBossAmount;
		with (obj_boss_bloodPrince)
		{
			hp += obj_player.hp*0.05*(1 +(global.playerLevel/100))*0.4;
		}
	}
}