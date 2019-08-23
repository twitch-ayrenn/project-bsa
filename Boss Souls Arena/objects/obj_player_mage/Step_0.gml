/// @description 
//vars
if (hp > maxHp){hp = maxHp;}
depth = -y;
////movement
actualSpeed = int64((moveSpeed + batSpeed + ashSpeed + global.sacreficeSpeedBoost + global.bladeSpeedFlatBoost)*global.bladeSpeedBoost);
if (keyboard_check(ord("W")) && place_free(x,y-actualSpeed))
{
	y -= actualSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("S"))&& place_free(x,y+actualSpeed))
{
	y += actualSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("D"))&& place_free(x+actualSpeed,y))
{
	x += actualSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("A")) && place_free(x-actualSpeed,y))
{
	x -= actualSpeed;
	state = States.Walking;
}
if (!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S"))) && !(keyboard_check(ord("D"))) && !(keyboard_check(ord("A"))))
{
	state = States.Idle;
}
////states thing
if (state == States.Idle)
{
	sprite_index = idleSprite;	
}
if (state == States.Walking)
{
	sprite_index = walkSprite;
}
if (mouse_x > x)
{
	image_xscale = playerSize;	
}
if (mouse_x < x)
{
	image_xscale = -playerSize;	
}
image_yscale = playerSize;
////damage
//meele damage
if (instance_exists(par_enemy))
{
	var nearestEnemy = instance_nearest(x,y,par_enemy);
	if (distance_to_point(nearestEnemy.x,nearestEnemy.y) <= 5 && canTakeMeeleDamage == true)
	{
		canTakeMeeleDamage = false;
		hp -= 8;
		var damageToTarget = 8;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		alarm[2] = canTakeMeeleDamageTime;
	}
}
////class abilites
if (mouse_check_button(mb_left) && canAttack == true)
{	
	canAttack = false;
	if (instance_exists(obj_portal))
	{
		with (obj_portal)
		{
			canAttack = true;
		}
	}
	if (instance_exists(obj_ashy))
	{
		with (obj_ashy)
		{
			canAttack = true;
		}
	}
	if (instance_exists(obj_portal) || instance_exists(obj_ashy))
	{
		var maybeShoot = choose(1,2,3);
		if (maybeShoot == 1)
		{
			if (global.soundOn == true)
			{
				audio_play_sound(snd_fireball,Prioity.Low,false);
			}
		}
	}
	if (global.selectedWispItem == WispBossItems.PurpleWispBottle)
	{
		var pwAngle = 0;
		repeat(int64((maxHp/25)*global.vampireCloakProjectileBoost))
		{
			var purpleWispShot = instance_create_depth(obj_item_purpleWisp.x,obj_item_purpleWisp.y,1,obj_item_prupleWispShot);
			purpleWispShot.direction = pwAngle;
			purpleWispShot.speed = 4;
			purpleWispShot.image_angle = pwAngle+90;
			purpleWispShot.image_blend = c_purple;
			pwAngle += 360/(int64((maxHp/25)*global.vampireCloakProjectileBoost));
		}
	}
	if (global.selectedZombieItem == ZombieItems.BloodMask)
	{
		with (obj_item_zobmieHead)
		{
			canAttack = true;
		}
	}
	if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Pheonixes)
	{
		var FlameShotBook = instance_create_depth(mouse_x,mouse_y,depth,obj_item_flameShot)
	}
	if (global.selectedSoulWispItem == SoulWispItems.Wisp_Soul && itemWispAmount > 0)
	{
		itemWispAmount -= 1;
		var wisp = instance_create_depth(x,y,depth+1,obj_item_wispSoulWisps);
	}
	if (global.selectedDeathLordItems == Artifacts.QueensHead && instance_exists(obj_item_queensHead))
	{
		with (obj_item_queensHead)
		{
			canAttack = true;	
		}
	}
	alarm[0] = firerate;
}
if (mouse_check_button_released(mb_right) && canAttack2 == true)
{	
	if (portalAmount > 0)
	{			
		if (global.soundOn == true)
		{
			audio_play_sound(snd_createPortal,Prioity.Small,false);
		}
		canAttack2 = false;
		var portal = instance_create_depth(mouse_x,mouse_y,depth-5,obj_portal);
		var portalBottom = instance_create_depth(mouse_x,mouse_y,depth-5,obj_portal_bottom);
		portalAmount -= 1;
		with (obj_camera){shake_remain += 3;}
		if (hp > maxHp*0.3){hp -= 8*global.GreenWispHpCostReduction*global.bookOfHealingHpCostReduction;}
		//items
		if (global.selectedWitchItem == WitchBossItems.EliseHead)
		{
			global.eliseAmmo += global.damage*6;
		}
		if (global.selectedKeeperItem == KeeperBossItems.KeeperBatCarrier)
		{
			batSpeedActive += 1;
		}
		if (global.selectedKeeperItem == KeeperBossItems.KeeperScythe)
		{
			with (obj_item_scythe)
			{
				state = ScytheState.Spin;
			}
		}
		if (global.selectedWitchItem == WitchBossItems.EliseHead)
		{
			global.eliseAmmo += global.damage*6;
		}
		if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Portals && itemPortalAmount > 0)
		{
			itemPortalAmount -= 1;
			var portal = instance_create_depth(x,y,depth,obj_item_portal);
		}
		if (global.selectedSoulGuardsItem = SoulGuardsItem.AngelsFeather && distance_to_point(mouse_x,mouse_y) < 96*0.6*global.redWispRangeBoost*global.speedAshDashIncrease*global.angelsFeatherRangeBoost && place_free(mouse_x,mouse_y))
		{
			instance_create_depth(x,y,depth,obj_tpEffectAngel);
			image_alpha = 0;
			if (global.soundOn == true)
			{
				audio_play_sound(snd_teleport,Prioity.Low,false);
			}
			x = mouse_x;
			y = mouse_y;
			if (global.selectedVampireItem == VampireBossItems.VampireCloak)
			{
				var angle3 = 25;
				repeat(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost))
				{
					var batProjectile = instance_create_depth(x,y,1,obj_item_batProjectile);
					batProjectile.direction = angle3;
					batProjectile.speed = 5;
					angle3+= 360/(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost));
				}
			}
		}
		if (global.selectedSoulGuardsItem == SoulGuardsItem.DevilsFeather && (instance_exists(par_enemy)))
		{
			var nearestEnemy = instance_nearest(x,y,par_enemy)
			var damageDealt = global.damage;
			var damageText = instance_create_depth(nearestEnemy.x+irandom_range(-8,8),nearestEnemy.y+irandom_range(-5,5),nearestEnemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			with (nearestEnemy)
			{	
				hp -= global.damage;
				repeat(int64((obj_player.maxHp/50)*global.vampireCrownExtraOrb*global.lifeWispExtraOrb))
				{
					instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
				}
			}	
		}
	}
	alarm[1] = firerate2;
}
//wispitems
if (global.selectedWispItem == WispBossItems.GreenWispBottle)
{
	hpRegenStacks++;
	if (hpRegenStacks >= hpRegenTime)
	{
		hpRegenStacks = 0;
		var amountHealed = (obj_player.maxHp*0.02);
		var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		hp += (obj_player.maxHp*0.02);
	}
}
//keeper
if (global.selectedKeeperItem == KeeperBossItems.KeeperBatCarrier)
{
	if (batSpeedActive > 3){ batSpeedActive = 3; }
	if (batSpeedActive < 0){ batSpeedActive = 0; }
	
	if (batSpeedActive > 0)
	{
		batSpeed = 1;
		batStacks++;
		if (batStacks >= (1.5)*30)
		{		
			batSpeedActive -= 1;
			batStacks = 0;
		}
		with (obj_item_batCarrier){abovePlayerY = -7;}
	}
	
	if (batSpeedActive < 1)
	{
		batSpeed = 0;
		with (obj_item_batCarrier){abovePlayerY = -14;}
	}
}
if (ashStacks > 0.99)
{
	ashStacks -= 1/30;
	ashSpeed = 1;
}
if (ashStacks < 1)
{
	ashStacks = 0;
	ashSpeed = 0;
}
//new dash
var dashSpeed = actualSpeed*2.5*global.soulSwordDashLength*global.speedAshDashIncrease;
if (keyboard_check(vk_space) && canDash == true)
{
	canDash = false;

	speed = dashSpeed;
	direction = point_direction(x,y,mouse_x,mouse_y);
	if (hp > maxHp*0.3){hp -= 10;}
	
	alarm[3] = (0.2)*30;
	alarm[4] = (dashCooldown)*30;
}
if (place_meeting(x,y+dashSpeed+4,par_prop)  || place_meeting(x,y-dashSpeed+4,par_prop) || place_meeting(x-dashSpeed+4,y,par_prop) || place_meeting(x+dashSpeed+4,y,par_prop))
{
	if (speed > 0 && hp > maxHp*0.3)
	{
		hp += 5;
	}
	speed = 0;
}